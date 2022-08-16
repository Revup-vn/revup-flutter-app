import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this.sr, this._repairRecord, this.user) : super(const _Initial()) {
    on<HomeEvent>(_onEvent);
  }
  final AppUser user;
  final StoreRepository sr;
  final IStore<RepairRecord> _repairRecord;
  //final imageList = IVector<String>.emptyVector();
  final imageList = IVector.from([
    'https://www.tiendauroi.com/wp-content/uploads/2020/02/shopee-freeship-xtra-750x233.jpg',
    'https://e-magazine.asiamedia.vn/wp-content/uploads/2021/07/top-10-hang-dau-nhot-noi-tieng-nhat-tai-viet-nam-21.jpg',
    'https://www.tiendauroi.com/wp-content/uploads/2020/02/shopee-freeship-xtra-750x233.jpg',
    'https://e-magazine.asiamedia.vn/wp-content/uploads/2021/07/top-10-hang-dau-nhot-noi-tieng-nhat-tai-viet-nam-21.jpg',
  ]);
  final timeRepair = '16:10 - 17:00';
  final dayRepair = '17/10/2022';
  Future<void> _onEvent(
    HomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const HomeState.loading());
        // load any repair record in active state
        final maybeRepairRecord =
            (await _repairRecord.where('cid', isEqualTo: user.uuid))
                .map(
                  (r) => r.map<Option<RepairRecord>>(
                    (a) => a.maybeMap(
                      aborted: (v) => none(),
                      finished: (v) => none(),
                      orElse: () => some(a),
                    ),
                  ),
                )
                .fold<IList<RepairRecord>>(
                  (l) => ilist([]),
                  (r) => r.map(
                    (a) => a.getOrElse(
                      () => throw NullThrownError(),
                    ),
                  ),
                )
                .find((a) => true);
        emit(
          HomeState.success(
            ads: imageList,
            activeRepairRecord: maybeRepairRecord,
          ),
        );
      },
    );
  }
}
