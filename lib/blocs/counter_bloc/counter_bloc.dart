import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInitial()) {
    on<IncreaseCounter>((event, emit) {
      counter++;
      print(counter);
      emit(
        CounterHasIncreased(
          increasedCounter: counter,
        ),
      );
    });

    on<DecreaseCounter>((event, emit) {
      if (counter > 0) {
        counter--;
      }
      // counter--;
      // if (counter < 0) {
      //   counter = 0;
      // }

      print(counter);
      emit(CounterHasDecreased(
        decreasedCounter: counter,
      ));
    });
  }
}
