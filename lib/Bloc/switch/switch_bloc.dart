import 'package:block_statemanagement/Bloc/switch/switch_event.dart';
import 'package:block_statemanagement/Bloc/switch/switch_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(const SwitchState()) {
    on<EnableOrDisableNotification>(_toggleSwitch);
    on<SliderEvent>(_slider);
  }
  void _toggleSwitch(
      EnableOrDisableNotification event, Emitter<SwitchState> emit) {
    emit(state.copyWith(isEnabled: !state.isEnabled));
  }

  void _slider(SliderEvent event, Emitter<SwitchState> emit) {
    emit(state.copyWith(sliderValue: event.sliderValue));
  }
}
