import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'invoice_payment_bloc.u.freezed.dart';
part 'invoice_payment_event.dart';
part 'invoice_payment_state.dart';

class InvoicePaymentBloc
    extends Bloc<InvoicePaymentEvent, InvoicePaymentState> {
  InvoicePaymentBloc(this._repairRecord) : super(const _Initial()) {
    on<InvoicePaymentEvent>(_onEvent);
  }
  final IStore<RepairRecord> _repairRecord;
  FutureOr<void> _onEvent(InvoicePaymentEvent event, Emitter emit) {
    event.when(
      started: () => emit(const InvoicePaymentState.initial()),
      changePaymentMethod: (isPayOnline) => emit(
        InvoicePaymentState.changePaymentMethodSuccess(
          isPaymentOnline: isPayOnline,
        ),
      ),
      sumbitPayment: (isPayOnline, totalAmount, pid, cid, feedback) {
        // TODO(wamynobe): add payment method

        // final recordBox = Hive.box<dynamic>('repairRecord');
        // final tmp = RepairRecord.finished(
        //   id: const Uuid().v4(),
        //   cid: cid,
        //   pid: pid,
        //   created: recordBox.get(
        //     'created',
        //     defaultValue: DateTime.now(),
        //   ) as DateTime,
        //   desc: recordBox
        //       .get('desc', defaultValue: 'no description yet')
        //       .toString(),
        //   vehicle: recordBox
        //       .get('vehicle', defaultValue: 'no description yet')
        //       .toString(),
        //   money: totalAmount,
        //   moving:
        //       recordBox.get('moving', defaultValue: DateTime.now()) as DateTime,
        //   started: recordBox.get(
        //     'started',
        //     defaultValue: DateTime.now(),
        //   ) as DateTime,
        //   completed: DateTime.now(),
        //   imgs: recordBox.get(
        //     'imgs',
        //     defaultValue: 'default image',
        //   ) as List<String>,
        //   feedback: feedback,
        //   from: Location(name: '', long: long, lat: lat),
        //   to: to,
        // );
        // _repairRecord.create(
        //   tmp,
        // );
        emit(
          const InvoicePaymentState.paymentSuccess(
            paymentStatus: 'success',
          ),
        );
      },
    );
  }
}
