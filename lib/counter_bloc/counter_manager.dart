import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_session/counter_bloc/counter_event.dart';
import 'package:github_session/counter_bloc/counter_state.dart';

class CounterManager extends Bloc<CounterEvent, CounterState> {
  CounterManager() : super(InitState()) {
    on<Increament>(
      (event, emit) {
        emit(TheNumberHasBeenAdded());
      },
    );

    on<Decreament>(
      (event, emit) {
        emit(TheNumberHasBeedSubbed());
        print("Helllo");
      },
    );
  }
}
