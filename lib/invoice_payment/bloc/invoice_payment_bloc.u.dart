import 'dart:async';
import 'dart:developer';

import 'package:flutter/foundation.dart';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geoflutterfire2/geoflutterfire2.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';
import 'package:uuid/uuid.dart';

part 'invoice_payment_bloc.u.freezed.dart';
part 'invoice_payment_event.dart';
part 'invoice_payment_state.dart';

class InvoicePaymentBloc
    extends Bloc<InvoicePaymentEvent, InvoicePaymentState> {
  InvoicePaymentBloc(
    this._repairRecord,
  ) : super(const _Initial()) {
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
        const uuid = Uuid();
        final recordBox = Hive.box<dynamic>('repairRecord');
        final from = Location(
          name: recordBox
              .get(
                'fromName',
                defaultValue: "location's name",
              )
              .toString(),
          point: GeoFirePoint(
            recordBox.get(
              'fromLat',
              defaultValue: 0.0,
            ) as double,
            recordBox.get(
              'fromLng',
              defaultValue: 0.0,
            ) as double,
          ),
        );
        final to = Location(
          name: recordBox
              .get(
                'toName',
                defaultValue: "location's name",
              )
              .toString(),
          point: GeoFirePoint(
            recordBox.get(
              'toLat',
              defaultValue: 0.0,
            ) as double,
            recordBox.get(
              'toLng',
              defaultValue: 0.0,
            ) as double,
          ),
        );
        final tmp = RepairRecord.finished(
          id: uuid.v4(),
          cid: cid,
          pid: pid,
          created: recordBox.get(
            'created',
            defaultValue: DateTime.now(),
          ) as DateTime,
          desc: recordBox
              .get('desc', defaultValue: 'no description yet')
              .toString(),
          vehicle: recordBox
              .get('vehicle', defaultValue: 'no description yet')
              .toString(),
          money: totalAmount,
          moving:
              recordBox.get('moving', defaultValue: DateTime.now()) as DateTime,
          started: recordBox.get(
            'started',
            defaultValue: DateTime.now(),
          ) as DateTime,
          completed: DateTime.now(),
          imgs: recordBox.get(
            'imgs',
            defaultValue: 'default image',
          ) as List<String>,
          feedback: feedback,
          from: from,
          to: to,
        );
        log(tmp.toString());
        _repairRecord.create(
          tmp,
        );
        emit(
          const InvoicePaymentState.paymentSuccess(
            paymentStatus: 'success',
          ),
        );
      },
    );
  }
}
