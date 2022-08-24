import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';
import 'package:uuid/uuid.dart';

import '../../../order/models/pending_repair_request.dart';
import '../../../order/models/pending_service_model.dart';
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
  ) : super(const _Initial()) {
    on<ChooseServiceEvent>(_onEvent);
  }
  final IStore<AppUser> _userStore;
  final IStore<RepairRecord> _repairRecord;
  final StoreRepository storeRepository;
  final services = <ServiceData>[];
  final servicesSelect = <ServiceData>[];
  final String providerId;
  final Option<AppUser> _maybeUser;

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
        final boxRprRecord = Hive.box<dynamic>('repairRecord');
        final vehicle = boxRprRecord.get('vehicle', defaultValue: '') as String;
        final catId = vehicle == 'car' ? 'Oto' : 'Xe máy';
        final catAndSv = await (await (storeRepository.repairCategoryRepo(
          maybeProviderData,
        )).get(catId))
            .map(
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
            )
            .fold((l) => throw NullThrownError(), (r) => r);

        emit(
          ChooseServiceState.success(
            serviceData: catAndSv.value2,
            providerId: providerId,
            catAndSv: catAndSv,
          ),
        );
      },
      serviceListSubmitted: (onRoute, sendMessage, saveLst) async {
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
            to: Location(
              name: '',
              long: toLng,
              lat: toLat,
            ),
            services: <OptionalService>[],
          ),
        );

        // create list pending payment service
        final _paymentRepo = storeRepository
            .repairPaymentRepo(RepairRecordDummy.dummyPending(recordId));
        for (var i = 0; i < saveLst.length; i++) {
          await _paymentRepo.create(
            PaymentService.pending(
              serviceName: saveLst[i].name,
              moneyAmount: saveLst[i].serviceFee,
              products: [],
              isOptional: false,
            ),
          );
        }

        // get latest provider fcm token
        final provider = (await _userStore.get(providerId))
            .fold<Option<AppUser>>(
              (l) => none(),
              some,
            )
            .getOrElse(() => throw NullThrownError());

        final tokens = (await storeRepository
                .userNotificationTokenRepo(provider)
                .all())
            .fold((l) => throw NullThrownError(), (r) => r.toList())
          ..sort(
            (a, b) => a.created.compareTo(b.created),
          );

        // send notify to provider
        sendMessage(tokens.first.token, recordId);

        // route to home page
        onRoute();
      },
      newServiceRequested: (optionalService) async {
        emit(const ChooseServiceState.loading());
        final newSvData = ServiceData(
          name: optionalService.name,
          serviceFee: -1, // provider give the price
          imageURL: optionalService.img,
          isOptional: true,
          products: [],
        );
        services.add(newSvData);
        final boxRprRecord = Hive.box<dynamic>('repairRecord');
        final pid = boxRprRecord.get('pid', defaultValue: '') as String;
        final maybeProviderData = (await _userStore.get(providerId))
            .fold<Option<AppUser>>(
              (l) => none(),
              some,
            )
            .getOrElse(() => throw NullThrownError());
        // new service is selected by default
        await Hive.box<dynamic>('serviceSelect')
            .put(services.indexOf(newSvData), newSvData.name);

        final vehicle = boxRprRecord.get('vehicle', defaultValue: '') as String;
        final catId = vehicle == 'car' ? 'Oto' : 'Xe máy';
        final catAndSv = await (await (storeRepository.repairCategoryRepo(
          maybeProviderData,
        )).get(catId))
            .map(
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
            )
            .fold((l) => throw NullThrownError(), (r) => r);

        emit(
          ChooseServiceState.success(
            serviceData: ilist(services),
            providerId: pid,
            catAndSv: catAndSv,
          ),
        );
      },
      detailRequestAccepted: (recordId) async {
        // get service selected
        final repairRecord = (await _repairRecord.get(recordId))
            .map<Option<RepairRecord>>(
              (r) => r.maybeMap(
                accepted: some,
                orElse: none,
              ),
            )
            .fold<Option<RepairRecord>>(
              (l) => none(),
              (r) => r,
            )
            .getOrElse(() => throw NullThrownError());
        final pendingRequest =
            PendingRepairRequest.fromDto(repairRecord: repairRecord);

        final pendingService = (await (storeRepository.repairPaymentRepo(
          RepairRecordDummy.dummyPending(recordId),
        )).all())
            .map(
              (r) => r.map<Option<PendingServiceModel>>(
                (a) => a.maybeMap(
                  pending: (v) =>
                      some(PendingServiceModel.fromDto(paymentService: v)),
                  orElse: none,
                ),
              ),
            )
            .fold((l) => ilist(<Option<PendingServiceModel>>[]), (r) => r)
            .filter(
              (a) => a.isSome(),
            )
            .map(
              (a) => a.getOrElse(() => throw NullThrownError()),
            );

        final maybeProviderData = (await _userStore.get(pendingRequest.pid))
            .fold<Option<AppUser>>(
              (l) => none(),
              some,
            )
            .getOrElse(() => throw NullThrownError());

        final catId = pendingRequest.vehicle == 'car' ? 'Oto' : 'Xe máy';
        final catAndSv = await (await (storeRepository.repairCategoryRepo(
          maybeProviderData,
        )).get(catId))
            .map(
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
            )
            .fold((l) => throw NullThrownError(), (r) => r);
        final svDataOptional = pendingService.map(
          ServiceData.fromPendingService,
        );
        final lst = catAndSv.value2.toList()
          ..removeWhere(
            (e) => svDataOptional.any((a) => a.name == e.name),
          );
        emit(
          ChooseServiceState.orderModify(
            serviceData: ilist(lst).plus(svDataOptional),
            catAndSv: catAndSv,
            pendingService: pendingService.toList(),
            providerId: providerId,
          ),
        );
      },
      selectProductCompleted: (onRoute, saveLst, recordId) async {
        // create list pending payment service
        final _paymentRepo = storeRepository
            .repairPaymentRepo(RepairRecordDummy.dummyPending(recordId));
        final payment = (await _paymentRepo.all())
            .fold((l) => nil<PaymentService>(), (r) => r)
            .toList();
        final paymentNotRm = payment
            .where(
              (element) => saveLst.any((e) => e.name == element.serviceName),
            )
            .toList();
        payment.removeWhere(
          paymentNotRm.contains,
        );
        for (var i = 0; i < payment.length; i++) {
          await _paymentRepo.delete(payment[i].serviceName);
        }
        onRoute();
      },
    );
  }
}
