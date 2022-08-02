// import 'package:bloc_test/bloc_test.dart';
// import 'package:dartz/dartz.dart';
// import 'package:flutter_test/flutter_test.dart';

// import 'package:revup/find_provider/models/provider_data.u.dart';
// import 'package:revup/repairer_profile/bloc/repairer_profile_bloc.dart';
// import 'package:revup/repairer_profile/models/rating_data.u.dart';
// import 'package:revup/repairer_profile/models/service_data.u.dart';

// void main() {
//   group('LoginBloc', () {
//     late RepairerProfileBloc findListRepairerBloc;
//     late ProviderData provider;
//     late IList<ServiceData> listServiceData;
//     late IList<RatingData> listRatingData;

//     setUp(() {
//       findListRepairerBloc = RepairerProfileBloc('1');
//       provider = ProviderData(
//         id: '1',
//         fullName: 'Nguyễn Thị Sửa',
//         address: '12346 địa chỉ ở đâu đó',
//         distance: 500,
//         numberStarRating: 4.5,
//         avatar:
//             'https://i.pinimg.com/564x/6d/ba/ee/6dbaee5de0f568b75e0bc7a8fa1576b1.jpg',
//         backgroundImg:
//             'https://listbds.com/wp-content/uploads/2022/01/cua-hang-sua-xe-may-uy-tin.jpg',
//         profileBio: 'Đến với chúng tôi các bạn sẽ là thượng đế',
//         timeArrivalInMinute: 10,
//         totalRating: 107,
//       );
//       listRatingData = ilist(
//         <RatingData>[
//           RatingData(
//             createdTime: DateTime.tryParse('2022-06-28'),
//             description: 'Thợ sửa rất có tâm và có tầm',
//             rating: 4,
//             updatedTime: DateTime.tryParse('2022-07-28 13:07:15.016994'),
//             consumerName: 'Khach Hang A',
//             imageUrl:
//                 'https://i.pinimg.com/564x/6d/ba/ee/6dbaee5de0f568b75e0bc7a8fa1576b1.jpg',
//           ),
//           RatingData(
//             createdTime: DateTime.tryParse('2022-01-09'),
//             description: 'Thợ sửa rất có tâm và có tầm',
//             rating: 5,
//             updatedTime: DateTime.tryParse('2022-07-28 13:07:15.016994'),
//             consumerName: 'Khach Hang Dep Trai',
//             imageUrl:
//                 'https://i.pinimg.com/564x/6d/ba/ee/6dbaee5de0f568b75e0bc7a8fa1576b1.jpg',
//           ),
//           RatingData(
//             createdTime: DateTime.tryParse('2022-01-12'),
//             description: 'Thợ sửa rất có tâm và có tầm',
//             rating: 5,
//             updatedTime: DateTime.tryParse('2022-07-28 13:07:15.016994'),
//             consumerName: 'Khach Hang Xau Trai',
//             imageUrl:
//                 'https://i.pinimg.com/564x/6d/ba/ee/6dbaee5de0f568b75e0bc7a8fa1576b1.jpg',
//           ),
//         ],
//       );
//       listServiceData = ilist(
//         <ServiceData>[
//           ServiceData(
//             imageURL:
//                 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFmMQW_46WiQGj4DA4Z_DcXz2RrBE7gr7v9qqmOTydEkLH02RVePhWZsSoa-G1UwhtP2A&usqp=CAU',
//             name: 'Thay Xăm',
//             serviceFee: 200000,
//           )
//         ],
//       );
//     });
//     blocTest<RepairerProfileBloc, RepairerProfileState>(
//       'emit loading and initial state when started event is added',
//       build: () => findListRepairerBloc,
//       act: (bloc) => bloc.add(const RepairerProfileEvent.started()),
//       expect: () => <RepairerProfileState>[
//         const RepairerProfileState.loading(),
//         RepairerProfileState.dataLoadSuccess(
//           provider: provider,
//           ratingData: listRatingData,
//           serviceData: listServiceData,
//         )
//       ],
//     );
//   });
// }
