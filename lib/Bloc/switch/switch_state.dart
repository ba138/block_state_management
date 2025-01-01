import 'package:equatable/equatable.dart';

class SwitchState extends Equatable {
  final bool isEnabled;
  final double sliderValue;
  const SwitchState({this.isEnabled = false, this.sliderValue = 0.1});
  SwitchState copyWith({bool? isEnabled, double? sliderValue}) {
    return SwitchState(
        isEnabled: isEnabled ?? this.isEnabled,
        sliderValue: sliderValue ?? this.sliderValue);
  }

  @override
  List<Object?> get props => [isEnabled, sliderValue];
}
