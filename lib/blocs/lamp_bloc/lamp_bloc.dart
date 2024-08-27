import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'lamp_event.dart';
part 'lamp_state.dart';

class LampBloc extends Bloc<LampEvent, LampState> {
  bool isOn = false;
  LampBloc() : super(LampIsOn()) {
    on<OnOffLamp>((event, emit) {
      if (isOn) {
        emit(LampIsOn());
        isOn = false;
      } else {
        emit(LampIsOff());
        isOn = true;
      }
    });
  }
}
