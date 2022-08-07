// import 'package:bloc_test/bloc_test.dart';
// import 'package:dartz/dartz.dart';
// import 'package:flutter_test/flutter_test.dart';

// import 'package:revup/find_provider/bloc/find_list_repairer_bloc.dart';
// import 'package:revup/find_provider/models/provider_data.u.dart';

// void main() {
//   group('LoginBloc', () {
//     late FindListRepairerBloc findListRepairerBloc;
//     late IList<ProviderData> listProvider;

//     setUp(() {
//       findListRepairerBloc = FindListRepairerBloc();
//       listProvider = ilist(
//         <ProviderData>[
//           ProviderData(
//             id: '1',
//             fullName: 'Nguyễn Thị Sửa',
//             address: '12346 địa chỉ ở đâu đó',
//             distance: 500,
//             numberStarRating: 4.5,
//             avatar:
//                 'https://i.pinimg.com/564x/6d/ba/ee/6dbaee5de0f568b75e0bc7a8fa1576b1.jpg',
//             backgroundImg:
//                 'https://listbds.com/wp-content/uploads/2022/01/cua-hang-sua-xe-may-uy-tin.jpg',
//             profileBio: 'Đến với chúng tôi các bạn sẽ là thượng đế',
//             timeArrivalInMinute: 10,
//             totalRating: 107,
//           )
//         ],
//       );
//     });
//     blocTest<FindListRepairerBloc, FindListRepairerState>(
//       'emit initial state when started event is added',
//       build: () => findListRepairerBloc,
//       act: (bloc) => bloc.add(const FindListRepairerEvent.started()),
//       expect: () => <FindListRepairerState>[
//         const FindListRepairerState.loading(),
//         FindListRepairerState.dataLoadSuccess(listProvider: listProvider)
//       ],
//     );
//     blocTest<FindListRepairerBloc, FindListRepairerState>(
//       'emit refreshSuccess when refresh event is added',
//       build: () => findListRepairerBloc,
//       act: (bloc) => bloc.add(const FindListRepairerEvent.refresh()),
//       expect: () => <FindListRepairerState>[
//         const FindListRepairerState.loading(),
//         FindListRepairerState.refreshSuccess(
//           listProvider: listProvider,
//         )
//       ],
//     );
//     blocTest<FindListRepairerBloc, FindListRepairerState>(
//       '''emit dropdownListChangedSuccess
//state when dropdownListChanged event is added''',
//       build: () => findListRepairerBloc,
//       act: (bloc) => bloc.add(
//         const FindListRepairerEvent.dropdownListChanged(sortType: 'Distance'
// ),
//       ),
//       expect: () => <FindListRepairerState>[
//         FindListRepairerState.dropdownListChangedSuccess(
//           sortType: 'Distance',
//           listProvider: listProvider,
//         )
//       ],
//     );
//   });
// }
