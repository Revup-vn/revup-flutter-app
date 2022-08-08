import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geoflutterfire2/geoflutterfire2.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';
import 'package:uuid/uuid.dart';

import '../../../add_message/models/message_data.dart';
import '../../../find_provider/models/provider_data.u.dart';
import '../../../repairer_profile/models/service_data.u.dart';

part 'choose_service_bloc.freezed.dart';
part 'choose_service_event.dart';
part 'choose_service_state.dart';

class ChooseServiceBloc extends Bloc<ChooseServiceEvent, ChooseServiceState> {
  ChooseServiceBloc(
    this._userStore,
    this._repairRecord,
    this.storeRepository,
    this.providerData,
    this.movingFee,
    this._maybeUser,
    this.messageData,
  ) : super(const _Initial()) {
    on<ChooseServiceEvent>(_onEvent);
  }
  final IStore<AppUser> _userStore;
  final IStore<RepairRecord> _repairRecord;
  final StoreRepository storeRepository;
  final categoryList = <Tuple2<RepairCategory, IList<ServiceData>>>[];
  final services = <ServiceData>[];
  final servicesSelect = <ServiceData>[];
  final ProviderData providerData;
  final int movingFee;
  final Option<AppUser> _maybeUser;
  final MessageData messageData;

  FutureOr<void> _onEvent(
    ChooseServiceEvent event,
    Emitter<ChooseServiceState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const ChooseServiceState.loading());
        await Hive.openBox<dynamic>('serviceSelect');
        final boxRprRecord = Hive.box<dynamic>('repairRecord');
        final pid = boxRprRecord.get('pid', defaultValue: '') as String;
        final maybeProviderData = (await _userStore.get(pid))
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
            providerId: pid,
          ),
        );
      },
      serviceListSubmitted: () async {
        emit(const ChooseServiceState.loading());
        final consumer = _maybeUser.getOrElse(() => throw NullThrownError());
        final boxRprRecord = Hive.box<dynamic>('repairRecord');
        await boxRprRecord.put('pid', providerData.id);
        final vehicle = boxRprRecord.get('vehicle', defaultValue: '') as String;
        final toLat = boxRprRecord.get('toLat', defaultValue: 0.0) as double;
        final toLng = boxRprRecord.get('toLng', defaultValue: 0.0) as double;
        final maybeProviderData = (await _userStore.get(providerData.id))
            .fold<Option<AppUser>>(
              (l) => none(),
              some,
            )
            .getOrElse(() => throw NullThrownError());
        final fromPoint = (maybeProviderData.toJson()['cur_location']
            as Map<String, dynamic>)['geopoint'] as GeoPoint;
        await _repairRecord.create(
          RepairRecord.pending(
            id: const Uuid().v4(),
            cid: consumer.uuid,
            pid: providerData.id,
            created: DateTime.now(),
            desc: messageData.desc ?? '',
            vehicle: vehicle,
            money: movingFee,
            from: GeoFirePoint(fromPoint.latitude, fromPoint.longitude),
            to: GeoFirePoint(toLat, toLng),
            services: <OptionalService>[],
          ),
        );
      },
      newServiceRequested: (optionalService) {
        emit(const ChooseServiceState.loading());
        final newSvData = ServiceData(
          name: optionalService.name,
          serviceFee: -1,
          imageURL: optionalService.img,
        );
        services.add(newSvData);
        final boxRprRecord = Hive.box<dynamic>('repairRecord');
        final pid = boxRprRecord.get('pid', defaultValue: '') as String;
        Hive.box<dynamic>('serviceSelect')
            .put(services.indexOf(newSvData), newSvData);
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
      detailRequestAccepted: (String recordId) {
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
