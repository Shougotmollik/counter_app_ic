import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    if (state < 20) {
      emit(state + 1);
    }
  }

  void decrement() {
    if (state > 0) {
      emit(state - 1);
    }
  }

  void reset() => emit(0);
}
