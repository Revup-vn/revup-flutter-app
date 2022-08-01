import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../models/provider_data.u.dart';

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
  final List<String> errorMessage;

  final IStore<AppUser> _userStore;
  FutureOr<void> _onEvent(
    FindListRepairerEvent event,
    Emitter<FindListRepairerState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(
          const FindListRepairerState.loading(),
        );
        (await _userStore.all())
            .map<IList<Option<ProviderData>>>(
              (r) => r.map(
                (a) => a.maybeMap(
                  orElse: none,
                  provider: (v) => some(ProviderData.fromDtos(v)),
                ),
              ),
            )
            .map<IList<ProviderData>>(
              (r) => r.filter((a) => a.isSome()).map(
                    (a) => a.getOrElse(
                      () => throw NullThrownError(),
                    ),
                  ),
            )
            .fold(
                (l) => emit(
                      FindListRepairerState.failure(
                        errorMessage: errorMessage.elementAt(0),
                      ),
                    ), (r) {
          r != ilist<ProviderData>([])
              ? emit(
                  FindListRepairerState.dataLoadSuccess(
                    listProvider: r,
                  ),
                )
              : emit(
                  FindListRepairerState.failure(
                    errorMessage: errorMessage.elementAt(1),
                  ),
                );
        });
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
