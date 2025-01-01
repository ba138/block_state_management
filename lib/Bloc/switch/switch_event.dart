import 'package:equatable/equatable.dart';

abstract class SwitchEvent extends Equatable {
  const SwitchEvent();
  @override
  List<Object> get props => [];
}

class EnableOrDisableNotification extends SwitchEvent {}

class SliderEvent extends SwitchEvent {
  double sliderValue;
  SliderEvent({required this.sliderValue});
  @override
  List<Object> get props => [sliderValue];
}
