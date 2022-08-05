import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../../configs/video_call_config_pub.dart';
import '../model/history_consumer_model.dart';

part 'history_consumer_bloc.freezed.dart';
part 'history_consumer_event.dart';
part 'history_consumer_state.dart';

class HistoryConsumerBloc
    extends Bloc<HistoryConsumerEvent, HistoryConsumerState> {
  HistoryConsumerBloc() : super(const _Initial()) {
    on<HistoryConsumerEvent>(_onEventHistory);
  }
  Future<void> _onEventHistory(
    HistoryConsumerEvent event,
    Emitter<HistoryConsumerState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const HistoryConsumerState.loading());
        final histories = [
          HistoryConsumerModel(
            isComplete: false,
            orderNumber: '12345',
            vehicleType: 'xe máy',
            serviceName: 'Thay săm xe',
            serviceStartBooking: DateTime.now(),
            orderStatusNotification: 'Bạn đã huỷ',
            user: AppUser.consumer(
              uuid: '1a',
              firstName: 'Nam',
              lastName: 'Ngoc',
              phone: '0866199497',
              dob: DateTime.now(),
              addr: 'Ninh Binh',
              email: 'namngoc231@gmail.com',
              active: true,
              avatarUrl:
                  'https://cdn.pixabay.com/photo/2017/09/27/15/52/man-2792456_1280s.jpg',
              createdTime: DateTime.now(),
              lastUpdatedTime: DateTime.now(),
              vac: const VideoCallAccount(
                id: '1a',
                username: '0866199497',
                pwd: DEFAULT_PASS,
                email: 'namngoc231@gmail.com',
              ),
            ),
          ),
          HistoryConsumerModel(
            isComplete: true,
            orderNumber: '23456',
            vehicleType: 'ô tô',
            serviceName: 'Hết xăng',
            serviceStartBooking: DateTime.now(),
            orderStatusNotification: 'Thanh toán thành công',
            user: AppUser.consumer(
              uuid: '1a',
              firstName: 'Nam',
              lastName: 'Ngoc',
              phone: '0866199497',
              dob: DateTime.now(),
              addr: 'Ninh Binh',
              email: 'namngoc231@gmail.com',
              active: true,
              avatarUrl:
                  'https://cdn.pixabay.com/photo/2017/09/27/15/52/man-2792456_1280.jpg',
              createdTime: DateTime.now(),
              lastUpdatedTime: DateTime.now(),
              vac: const VideoCallAccount(
                id: '1a',
                username: '0866199497',
                pwd: DEFAULT_PASS,
                email: 'namngoc231@gmail.com',
              ),
            ),
          ),
          HistoryConsumerModel(
            isComplete: true,
            orderNumber: '34567',
            vehicleType: 'xe máy',
            serviceName: 'Thay phanh xe',
            serviceStartBooking: DateTime.now(),
            orderStatusNotification: 'Thanh toán thành công',
            user: AppUser.consumer(
              uuid: '1a',
              firstName: 'Nam',
              lastName: 'Ngoc',
              phone: '0866199497',
              dob: DateTime.now(),
              addr: 'Ninh Binh',
              email: 'namngoc231@gmail.com',
              active: true,
              avatarUrl:
                  'https://cdn.pixabay.com/photo/2017/09/27/15/52/man-2792456_1280s.jpg',
              createdTime: DateTime.now(),
              lastUpdatedTime: DateTime.now(),
              vac: const VideoCallAccount(
                id: '1a',
                username: '0866199497',
                pwd: DEFAULT_PASS,
                email: 'namngoc231@gmail.com',
              ),
            ),
          ),
        ];
        emit(
          HistoryConsumerState.success(histories),
        );
      },
    );
  }
}
