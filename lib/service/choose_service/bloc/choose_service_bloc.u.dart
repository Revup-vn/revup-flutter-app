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
    this.momoVn,
  ) : super(const _Initial()) {
    on<ChooseServiceEvent>(_onEvent);
  }
  final IStore<AppUser> _userStore;
  final IStore<RepairRecord> _repairRecord;
  final StoreRepository storeRepository;
  final optionalService = <ServiceData>[];
  final String providerId;
  final Option<AppUser> _maybeUser;
  final MomoCubit momoVn;

  FutureOr<void> _onEvent(
    ChooseServiceEvent event,
    Emitter<ChooseServiceState> emit,
  ) async {
    await event.when(
      started: (newService) async {
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
        final movingFee = boxRprRecord.get('movingFee', defaultValue: 0) as int;
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
        final tmp = IList.from(
          newService.map(
            (e) => ServiceData(
              name: e.name,
              serviceFee: -1,
              imageURL: e.img,
              products: [],
              isOptional: true,
            ),
          ),
        );
        emit(
          ChooseServiceState.success(
            serviceData: catAndSv.value2.plus(tmp),
            providerId: providerId,
            catAndSv: catAndSv,
            movingFee: movingFee,
          ),
        );
      },
      serviceListSubmitted:
          (onRouteToTimeOutPage, sendMessage, saveLst, onPopBack, pay) async {
        emit(const ChooseServiceState.loading());

        if (await _isProviderOnline() && await _hasNotPendingRecord()) {
          // lock Provider status
          _userStore.updateFields(
            AppUserDummy.dummyProvider(providerId).maybeMap(
              orElse: () => throw NullThrownError(),
              provider: (p) => p.copyWith(
                online: false,
              ),
            ),
            cons(AppUserDummy.field(AppUserFields.Online), nil()),
          );

          final consumer = _maybeUser.getOrElse(() => throw NullThrownError());
          final boxRprRecord = Hive.box<dynamic>('repairRecord');
          await boxRprRecord.put('pid', providerId);
          final vehicle =
              boxRprRecord.get('vehicle', defaultValue: '') as String;
          final msgDesc =
              boxRprRecord.get('msgDesc', defaultValue: '') as String;
          // final msgImg =
          //     boxRprRecord.get('msgImg', defaultValue: '') as Uint8List;
          final movingFee =
              boxRprRecord.get('movingFee', defaultValue: 0) as int;
          final toLat = boxRprRecord.get('toLat', defaultValue: 0.0) as double;
          final toLng = boxRprRecord.get('toLng', defaultValue: 0.0) as double;
          final doc = await _userStore.collection().doc(providerId).get();
          final maybeGeopoint = doc.data() ?? <String, dynamic>{};
          if (maybeGeopoint.isEmpty) {
            emit(const ChooseServiceState.failure());
          }
          final fromPoint = (maybeGeopoint['cur_location']
              as Map<String, dynamic>)['geopoint'] as GeoPoint;
          final recordId = const Uuid().v4();
          await boxRprRecord.put('id', recordId);
          if (!await _isProviderOnline()) {
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
          } else {
            return;
          }

          // create list pending payment service
          final _paymentRepo = storeRepository
              .repairPaymentRepo(RepairRecordDummy.dummyPending(recordId));
          for (var i = 0; i < saveLst.length; i++) {
            saveLst[i].isOptional
                ? await _paymentRepo.create(
                    PaymentService.needToVerify(
                      serviceName: saveLst[i].name,
                      desc: '',
                    ),
                  )
                : await _paymentRepo.create(
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
              .map(
                (r) => r.sort(
                  orderBy(StringOrder.reverse(), (a) => a.created.toString()),
                ),
              )
              .fold((l) => throw NullThrownError(), (r) => r.toList());

          pay(
            movingFee,
            recordId,
            'Revup',
            '${consumer.firstName} ${consumer.lastName}',
          );
          // send notify to provider
          // sendMessage(tokens.first.token, recordId);

          // onRouteToTimeOutPage(tokens.first.token);
          return;
        }

        onPopBack();
      },
    );
  }

  // pending => < 12h
  Future<bool> _hasNotPendingRecord() async => (await _repairRecord.queryTs(
        (a) => a
            .where(
              RepairRecordDummy.field(RepairRecordFields.ProviderId),
              isEqualTo: providerId,
            )
            .orderBy(
              RepairRecordDummy.field(RepairRecordFields.CreateDate),
              descending: true,
            )
            .limit(1)
            .get(),
      ))
          .map(
            (r) => r.headOption
                .map(
                  (a) => a.maybeMap(
                    orElse: () => true,
                    pending: (p) =>
                        DateTime.now().compareTo(
                          p.created.add(const Duration(hours: 12)),
                        ) >=
                        0,
                  ),
                )
                .getOrElse(() => true),
          )
          .getOrElse(() => true);

  Future<bool> _isProviderOnline() async => (await _userStore.get(providerId))
      .map(
        (r) => r.maybeMap(
          orElse: () => false,
          provider: (p) => p.online,
        ),
      )
      .getOrElse(() => false);
}
