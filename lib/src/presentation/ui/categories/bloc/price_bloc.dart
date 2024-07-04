import 'package:bloc/bloc.dart';
import 'price_event.dart';
import 'price_state.dart';

class PriceBloc extends Bloc<PriceEvent, PriceState> {
  PriceBloc() : super(PriceState.initial()) {
    on<SelectKgs>((event, emit) {
      emit(state.copyWith(isKgsSelected: true));
    });
    on<SelectUsd>((event, emit) {
      emit(state.copyWith(isKgsSelected: false));
    });
  }
}
