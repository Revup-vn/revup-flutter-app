import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/notification_consumer_model.dart';

part 'notification_consumer_bloc.freezed.dart';
part 'notification_consumer_event.dart';
part 'notification_consumer_state.dart';

class NotificationConsumerBloc
    extends Bloc<NotificationConsumerEvent, NotificationConsumerState> {
  NotificationConsumerBloc() : super(const _Initial()) {
    on<NotificationConsumerEvent>(_onEventHistory);
  }

  Future<void> _onEventHistory(
    NotificationConsumerEvent event,
    Emitter<NotificationConsumerState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const NotificationConsumerState.loading());
        final notifications = [
          NotificationConsumerModel(
            orderStatusNotification: 'Hoàn thành sửa chữa',
            orderNumber: '34567',
            serviceStartBooking: DateTime.now(),
          ),
          NotificationConsumerModel(
            orderStatusNotification: 'Thợ đang sửa chữa',
            orderNumber: '34567',
            serviceStartBooking: DateTime.now(),
          ),
          NotificationConsumerModel(
            orderStatusNotification: 'Thợ báo giá dịch vụ',
            orderNumber: '34567',
            serviceStartBooking: DateTime.now(),
          ),
          NotificationConsumerModel(
            orderStatusNotification: 'Thợ đã đến',
            orderNumber: '34567',
            serviceStartBooking: DateTime.now(),
          ),
          NotificationConsumerModel(
            orderStatusNotification: 'Thợ bắt đầu xuất phát',
            orderNumber: '34567',
            serviceStartBooking: DateTime.now(),
          ),
          NotificationConsumerModel(
            orderStatusNotification: 'Thợ đã chấp nhận yêu cầu',
            orderNumber: '34567',
            serviceStartBooking: DateTime.now(),
          ),
        ];

        emit(
          NotificationConsumerState.success(notifications),
        );
      },
    );
  }
}
