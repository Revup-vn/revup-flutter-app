import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../model/service_model.dart';

part 'order_service_bloc.u.freezed.dart';
part 'order_service_event.dart';
part 'order_service_state.dart';

class OrderServiceBloc extends Bloc<OrderServiceEvent, OrderServiceState> {
  OrderServiceBloc(
    this.pid,
    this.cid,
    this.data,
    this._repairRecord,
    this._storeRepository,
  ) : super(const _Initial()) {
    on<OrderServiceEvent>(_onEvent);
  }
  final String pid;
  final String cid;
  final IList<PaymentService> data;
  final IStore<RepairRecord> _repairRecord;
  final StoreRepository _storeRepository;

  Future<void> _onEvent(
    OrderServiceEvent event,
    Emitter<OrderServiceState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(
          const OrderServiceState.loading(),
        );
        final listServiceModel = data.map(
          (a) => a.map(
            pending: (v) => ServiceModel(
              name: v.serviceName,
              price: v.moneyAmount,
              providerID: pid,
              consumerID: cid,
              status: 0,
            ),
            paid: (v) => ServiceModel(
              name: v.serviceName,
              price: v.moneyAmount,
              providerID: pid,
              consumerID: cid,
              status: 1,
            ),
            needToVerify: (v) => ServiceModel(
              name: v.serviceName,
              price: 0,
              providerID: pid,
              consumerID: cid,
              status: 2,
            ),
          ),
        );
        final totalPrice = listServiceModel.map((a) => a.price).foldLeft<int>(
              0,
              (previous, a) => previous + a,
            );
        emit(
          OrderServiceState.loadDataSuccess(
            services: listServiceModel,
            totalPrice: totalPrice,
            ready: false,
          ),
        );
      },
      addNewService: (currentServiceModel, newlyAddedServiceModel) {
        final listMaybeNewlyAddedService =
            newlyAddedServiceModel.map<Option<ServiceModel>>(
          (a) => a.maybeMap(
            pending: (value) => some(
              ServiceModel(
                name: value.serviceName,
                price: value.moneyAmount,
                providerID: pid,
                consumerID: cid,
                status: 0,
              ),
            ),
            orElse: none,
            needToVerify: (value) => some(
              ServiceModel(
                name: value.serviceName,
                price: 0,
                providerID: pid,
                consumerID: cid,
                status: 2,
              ),
            ),
          ),
        );
        final listNewlyServiceModel =
            listMaybeNewlyAddedService.filter((a) => a.isSome()).map(
                  (a) => a.getOrElse(
                    () => throw NullThrownError(),
                  ),
                );

        final listServiceModel = IListMonoid<ServiceModel>()
            .append(currentServiceModel, listNewlyServiceModel);

        final total = listServiceModel
            .map((a) => a.price)
            .foldLeft<int>(0, (previous, a) => previous + a);

        emit(
          OrderServiceState.loadDataSuccess(
            services: listServiceModel,
            totalPrice: total,
            ready: true,
          ),
        );
      },
      sumbit: (serviceModel) async {
        emit(const OrderServiceState.loading());
        final maybeListRepairRecord = (await _repairRecord.where(
          'cid',
          isEqualTo: cid,
        ))
            .map((r) => r.where((a) => a.pid == pid));

        final listRepairRecord = maybeListRepairRecord
            .map(
              (r) => r.map(
                (a) => a.maybeMap<Option<RepairRecord>>(
                  orElse: none,
                  accepted: some,
                ),
              ),
            )
            .map<IList<RepairRecord>>(
              (r) => r.filter((a) => a.isSome()).map(
                    (a) => a.getOrElse(
                      () => throw NullThrownError(),
                    ),
                  ),
            )
            .fold<IList<RepairRecord>>((l) => nil(), (r) => r)
          ..map((record) {
            serviceModel.map(
              (payment) => payment.maybeMap(
                pending: (value) =>
                    _storeRepository.repairPaymentRepo(record).create(value),
                needToVerify: (value) =>
                    _storeRepository.repairPaymentRepo(record).create(value),
                orElse: () => throw NullThrownError(),
              ),
            );
          });

        final listIStorePaymentService = listRepairRecord.map(
          _storeRepository.repairPaymentRepo,
        );

        final maybeListPaymentService = await Future.wait(
          listIStorePaymentService.map((a) async => a.all()).toIterable(),
        );
        final listPaymentService = IList.from(
          maybeListPaymentService.where((element) => element.isRight()).expand(
                (element) => element
                    .getOrElse(() => throw NullThrownError())
                    .toIterable(),
              ),
        );
        final listServiceModel = listPaymentService.map(
          (a) => a.map(
            pending: (value) => ServiceModel(
              name: value.serviceName,
              price: value.moneyAmount,
              providerID: pid,
              consumerID: cid,
              status: 0,
            ),
            paid: (value) => ServiceModel(
              name: value.serviceName,
              price: value.moneyAmount,
              providerID: pid,
              consumerID: cid,
              status: 1,
            ),
            needToVerify: (value) => ServiceModel(
              name: value.serviceName,
              price: 0,
              providerID: pid,
              consumerID: cid,
              status: 2,
            ),
          ),
        );
        final total = listServiceModel
            .map((a) => a.price)
            .foldLeft<int>(0, (previous, a) => previous + a);
        emit(
          OrderServiceState.loadDataSuccess(
            services: listServiceModel,
            totalPrice: total,
            ready: true,
          ),
        );
      },
    );
  }
}
