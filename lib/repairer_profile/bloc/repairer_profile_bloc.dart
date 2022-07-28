import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../find_provider/models/provider_data.dart';
import '../models/rating_data.dart';
import '../models/service_data.dart';

part 'repairer_profile_event.dart';
part 'repairer_profile_state.dart';
part 'repairer_profile_bloc.freezed.dart';

class RepairerProfileBloc
    extends Bloc<RepairerProfileEvent, RepairerProfileState> {
  RepairerProfileBloc(this._providerID) : super(const _Initial()) {
    on<RepairerProfileEvent>(_onEvent);
  }
  final String _providerID;

  FutureOr<void> _onEvent(
    RepairerProfileEvent event,
    Emitter<RepairerProfileState> emit,
  ) {
    event.when(
      started: () {
        emit(const RepairerProfileState.loading());
        emit(
          RepairerProfileState.dataLoadSuccess(
            provider: fetchProviderData(),
            ratingData: fetchRatingData(),
            serviceData: fetchServiceData(),
          ),
        );
      },
    );
  }

  IList<ServiceData> fetchServiceData() {
    final listServiceData = ilist(
      <ServiceData>[
        ServiceData(
          imageURL:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFmMQW_46WiQGj4DA4Z_DcXz2RrBE7gr7v9qqmOTydEkLH02RVePhWZsSoa-G1UwhtP2A&usqp=CAU',
          name: 'Thay Xăm',
          serviceFee: 200000,
        )
      ],
    );
    return listServiceData;
  }

  IList<RatingData> fetchRatingData() {
    final listServiceData = ilist(
      <RatingData>[
        RatingData(
          createdTime: DateTime.tryParse('2022-06-28'),
          description: 'Thợ sửa rất có tâm và có tầm',
          rating: 4,
          updatedTime: DateTime.tryParse('2022-07-28 13:07:15.016994'),
          consumerName: 'Khach Hang A',
          imageUrl:
              'https://i.pinimg.com/564x/6d/ba/ee/6dbaee5de0f568b75e0bc7a8fa1576b1.jpg',
        ),
        RatingData(
          createdTime: DateTime.tryParse('2022-01-09'),
          description: 'Thợ sửa rất có tâm và có tầm',
          rating: 5,
          updatedTime: DateTime.tryParse('2022-07-28 13:07:15.016994'),
          consumerName: 'Khach Hang Dep Trai',
          imageUrl:
              'https://i.pinimg.com/564x/6d/ba/ee/6dbaee5de0f568b75e0bc7a8fa1576b1.jpg',
        ),
        RatingData(
          createdTime: DateTime.tryParse('2022-01-12'),
          description: 'Thợ sửa rất có tâm và có tầm',
          rating: 5,
          updatedTime: DateTime.tryParse('2022-07-28 13:07:15.016994'),
          consumerName: 'Khach Hang Xau Trai',
          imageUrl:
              'https://i.pinimg.com/564x/6d/ba/ee/6dbaee5de0f568b75e0bc7a8fa1576b1.jpg',
        ),
      ],
    );
    return listServiceData;
  }

  ProviderData fetchProviderData() {
    final provider = ProviderData(
      id: _providerID,
      fullName: 'Nguyễn Thị Sửa',
      address: '12346 địa chỉ ở đâu đó',
      distance: 500,
      numberStarRating: 4.5,
      avatar:
          'https://i.pinimg.com/564x/6d/ba/ee/6dbaee5de0f568b75e0bc7a8fa1576b1.jpg',
      backgroundImg:
          'https://listbds.com/wp-content/uploads/2022/01/cua-hang-sua-xe-may-uy-tin.jpg',
      profileBio: 'Đến với chúng tôi các bạn sẽ là thượng đế',
      timeArrivalInMinute: 10,
      totalRating: 107,
    );
    return provider;
  }
}
