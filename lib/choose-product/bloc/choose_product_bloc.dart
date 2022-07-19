import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'choose_product_event.dart';
part 'choose_product_state.dart';
part 'choose_product_bloc.freezed.dart';

class ChooseProductBloc extends Bloc<ChooseProductEvent, ChooseProductState> {
  ChooseProductBloc() : super(_Initial()) {
    on<ChooseProductEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
