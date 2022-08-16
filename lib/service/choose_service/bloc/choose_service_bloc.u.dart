import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';
import 'package:uuid/uuid.dart';

import '../../../repairer_profile/models/service_data.u.dart';

// ignore: unnecessary_import

part 'choose_service_bloc.u.freezed.dart';
part 'choose_service_event.dart';
part 'choose_service_state.dart';

class ChooseServiceBloc extends Bloc<ChooseServiceEvent, ChooseServiceState> {
  ChooseServiceBloc(
    this._userStore,
    this._repairRecord,
    this.storeRepository,
    this.providerId,
    this._maybeUser,
    // this.notificationCubit,
  ) : super(const _Initial()) {
    on<ChooseServiceEvent>(_onEvent);
  }
  final IStore<AppUser> _userStore;
  final IStore<RepairRecord> _repairRecord;
  final StoreRepository storeRepository;
  final categoryList = <Tuple2<RepairCategory, IList<ServiceData>>>[];
  final services = <ServiceData>[];
  final servicesSelect = <ServiceData>[];
  final String providerId;
  final Option<AppUser> _maybeUser;
  // final NotificationCubit notificationCubit;

  FutureOr<void> _onEvent(
    ChooseServiceEvent event,
    Emitter<ChooseServiceState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const ChooseServiceState.loading());
        await Hive.openBox<dynamic>('serviceSelect');

        final maybeProviderData = (await _userStore.get(providerId))
            .fold<Option<AppUser>>(
              (l) => none(),
              some,
            )
            .getOrElse(() => throw NullThrownError());
        final catData = (await (storeRepository.repairCategoryRepo(
          maybeProviderData,
        )).all())
            .map(
              (r) => r.map(
                (a) async => tuple2<RepairCategory, IList<ServiceData>>(
                  a,
                  (await storeRepository
                          .repairServiceRepo(maybeProviderData, a)
                          .all())
                      .fold<IList<ServiceData>>(
                    (l) => ilist([]),
                    (r) => r.map(
                      ServiceData.fromDtos,
                    ),
                  ),
                ),
              ),
            )
            .fold<IList<Future<Tuple2<RepairCategory, IList<ServiceData>>>>>(
              (l) => throw NullThrownError(),
              (r) => r,
            );

        final categories =
            (await Future.wait(catData.toIterable())).map((e) => e).toList();

        final svList = categories.map((e) => e.value2).fold<IList<ServiceData>>(
              ilist(<ServiceData>[]),
              (previousValue, element) =>
                  IListMonoid<ServiceData>().append(previousValue, element),
            );
        services.addAll(svList.toIterable());

        emit(
          ChooseServiceState.success(
            serviceData: svList,
            categories: categories,
            providerId: providerId,
          ),
        );
      },
      serviceListSubmitted: (title, body) async {
        emit(const ChooseServiceState.loading());

        final consumer = _maybeUser.getOrElse(() => throw NullThrownError());
        final boxRprRecord = Hive.box<dynamic>('repairRecord');
        await boxRprRecord.put('pid', providerId);
        final vehicle = boxRprRecord.get('vehicle', defaultValue: '') as String;
        final msgDesc = boxRprRecord.get('msgDesc', defaultValue: '') as String;
        // final msgImg =
        //     boxRprRecord.get('msgImg', defaultValue: '') as Uint8List;
        final movingFee = boxRprRecord.get('movingFee', defaultValue: 0) as int;
        final toLat = boxRprRecord.get('toLat', defaultValue: 0.0) as double;
        final toLng = boxRprRecord.get('toLng', defaultValue: 0.0) as double;
        final doc = await _userStore.collection().doc(providerId).get();
        final maybeGeopoint = doc.data()!;

        final fromPoint = (maybeGeopoint['cur_location']
            as Map<String, dynamic>)['geopoint'] as GeoPoint;
        final recordId = const Uuid().v4();
        await boxRprRecord.put('id', recordId);
        await _repairRecord.create(
          RepairRecord.pending(
            id: recordId,
            cid: consumer.uuid,
            pid: providerId,
            created: DateTime.now(),
            desc: msgDesc,
            vehicle: vehicle,
            money: movingFee,
            from: Location(
              name: '',
              long: fromPoint.longitude,
              lat: fromPoint.latitude,
            ),
            // from: GeoFirePoint(fromPoint.latitude, fromPoint.longitude),
            to: Location(
              name: '',
              long: toLng,
              lat: toLat,
            ),
            services: <OptionalService>[],
          ),
        );

        // send notification to provider
        // final token = (await storeRepository
        //         .userNotificationTokenRepo(maybeProviderData)
        //         .get(providerId))
        //     .where((r) => r.platform == 'fcm', () => throw NullThrownError())
        //     .fold((l) => emit, (r) => r);

        // .map<Option<String>>((r) => r.platform)
        // .fold((l) => emit, (r) => r);
        // .fold((l) => emit(ChooseServiceState.failure()), (r) => r.token);
        // await sendNotificationTo(token, recordId, title, body);

        emit(const ChooseServiceState.submitSuccess());
      },
      newServiceRequested: (optionalService) {
        emit(const ChooseServiceState.loading());
        final newSvData = ServiceData(
          name: optionalService.name,
          serviceFee: -1, // provider give the price
          imageURL: optionalService.img,
        );
        services.add(newSvData);
        final boxRprRecord = Hive.box<dynamic>('repairRecord');
        final pid = boxRprRecord.get('pid', defaultValue: '') as String;

        // new service is selected by default
        Hive.box<dynamic>('serviceSelect')
            .put(services.indexOf(newSvData), newSvData.name);
        emit(
          ChooseServiceState.success(
            serviceData: ilist(services),
            categories: categoryList,
            providerId: pid,
          ),
        );
      },
      serviceSelectChanged: (serviceData, index) async {
        final boxServiceSelect = Hive.box<dynamic>('serviceSelect');
        if (boxServiceSelect.containsKey(index)) {
          await boxServiceSelect.delete(serviceData.name);

          return;
        }
        await boxServiceSelect.put(index, serviceData.name);
      },
      detailRequestAccepted: () {
        final boxRprRecord = Hive.box<dynamic>('repairRecord');
        final pid = boxRprRecord.get('pid', defaultValue: '') as String;
        emit(
          ChooseServiceState.orderModify(
            serviceData: ilist(services),
            categories: categoryList,
            providerId: pid,
          ),
        );
      },
    );
  }
}
