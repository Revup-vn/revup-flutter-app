import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/provider_data.u.dart';
import '../../map/map_api/map_api.dart';

part 'find_list_repairer_event.dart';
part 'find_list_repairer_state.dart';
part 'find_list_repairer_bloc.freezed.dart';

class FindListRepairerBloc
    extends Bloc<FindListRepairerEvent, FindListRepairerState> {
  FindListRepairerBloc(
    this._userStore,
    this.errorMessage,
  ) : super(const _Initial(hasValue: false)) {
    on<FindListRepairerEvent>(_onEvent);
  }
  final _geo = Geoflutterfire();
  final List<String> errorMessage;

  final IStore<AppUser> _userStore;
  FutureOr<void> _onEvent(
    FindListRepairerEvent event,
    Emitter<FindListRepairerState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const FindListRepairerState.loading());
        // mock provider location
        // final point = _geo.point(
        //     latitude: 21.030919894910200, longitude: 105.8341858504330);
        // await _userStore.collection().doc('geCHNSHZ2xg2GfMSfZpxAweWWln2').set(
        //   <String, dynamic>{'cur_location': point.data},
        //   SetOptions(merge: true),
        // );
        final boxLocation = Hive.box<dynamic>('location');
        final repairLat =
            boxLocation.get('repairLat', defaultValue: 0.0) as double;
        final repairLng =
            boxLocation.get('repairLng', defaultValue: 0.0) as double;
        final repairPoint = GeoFirePoint(repairLat, repairLng);
        final stream = getNearbyProviders(repairLat, repairLng);

        await for (final List<DocumentSnapshot> dataList in stream) {
          final providers = <ProviderData>[];
          for (final doc in dataList) {
            final data = doc.data()! as Map<String, dynamic>;
            final providerLoc = (data['cur_location']
                as Map<String, dynamic>)['geopoint'] as GeoPoint;
            final directions = await getDirections(
              LatLng(repairPoint.latitude, repairPoint.longitude),
              LatLng(providerLoc.latitude, providerLoc.longitude),
            );
            final provider = ProviderData.fromDtos(
              AppUser.fromJson(data),
              distance: directions.distance.toDouble(),
              duration: directions.duration.toDouble(),
            );
            providers.add(provider);
          }
          emit(
            providers.isNotEmpty
                ? FindListRepairerState.dataLoadSuccess(
                    listProvider: ilist<ProviderData>(providers),
                  )
                : FindListRepairerState.failure(
                    errorMessage: errorMessage.elementAt(1),
                  ),
          );
        }

        // (await _userStore.all())
        //     .map<IList<Option<ProviderData>>>(
        //       (r) => r.map(
        //         (a) => a.maybeMap(
        //           orElse: none,
        //           provider: (v) => some(
        //             ProviderData.fromDtos(v),
        //           ),
        //         ),
        //       ),
        //     )
        //     .map<IList<ProviderData>>(
        //       (r) => r.filter((a) => a.isSome()).map(
        //             (a) => a.getOrElse(
        //               () => throw NullThrownError(),
        //             ),
        //           ),
        //     )
        //     .fold(
        //   (l) => emit(
        //     FindListRepairerState.failure(
        //       errorMessage: errorMessage.elementAt(0),
        //     ),
        //   ),
        //   (r) {
        //     r != ilist<ProviderData>([])
        //         ? emit(
        //             FindListRepairerState.dataLoadSuccess(
        //               listProvider: r,
        //             ),
        //           )
        //         : emit(
        //             FindListRepairerState.failure(
        //               errorMessage: errorMessage.elementAt(1),
        //             ),
        //           );
        //   },
        // );
      },
      dropdownListChanged: (sortType) {
        emit(
          FindListRepairerState.dropdownListChangedSuccess(
            listProvider: listRepairer,
            sortType: sortType,
          ),
        );
      },
    );
  }

  Stream<List<DocumentSnapshot>> getNearbyProviders(double lat, double lng) {
    final center = GeoFirePoint(lat, lng);
    final typeRef = _userStore.collection().where('type', isEqualTo: '2');
    final onlineRef = typeRef.where('online', isEqualTo: true);

    return _geo.collection(collectionRef: onlineRef).within(
          center: center,
          radius: 50,
          field: 'cur_location',
          strictMode: true,
        );
  }

  final listRepairer = ilist(
    <ProviderData>[
      ProviderData(
        id: '1',
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
      ),
    ],
  );
}
