import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'find_list_repairer_event.dart';
part 'find_list_repairer_state.dart';
part 'find_list_repairer_bloc.freezed.dart';

class FindListRepairerBloc
    extends Bloc<FindListRepairerEvent, FindListRepairerState> {
  FindListRepairerBloc() : super(_Initial()) {
    on<Started>((event, emit) {
      emit(
        const FindListRepairerState.initial(),
      );
    });
    on<Refresh>((event, emit) {
      emit(
        const FindListRepairerState.reload(
          listItems: [
            [
              'https://fandom.vn/wp-content/uploads/2019/04/naruto-uchiha-itachi-1.jpg',
              'Nguyen Van C',
              'Cửa hàng sửa xe A, 14A, ngõ Thanh Bình',
              '4.9',
              '109',
              '500',
              '10',
            ],
            [
              'https://fandom.vn/wp-content/uploads/2019/04/naruto-uchiha-itachi-1.jpg',
              'Nguyen Van D',
              'Cửa hàng sửa xe A, 14A, ngõ Thanh Bình',
              '4.9',
              '109',
              '500',
              '10',
            ],
          ],
        ),
      );
    });
  }
}
