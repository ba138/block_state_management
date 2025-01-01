import 'package:equatable/equatable.dart';

class SwitchState extends Equatable {
  final bool isEnabled;
  final double slider;
  const SwitchState({this.isEnabled = false, this.slider = 0.1});
  SwitchState copyWith({bool? isEnabled}) {
    return SwitchState(isEnabled: isEnabled ?? this.isEnabled, slider: slider);
  }

  @override
  List<Object?> get props => [isEnabled, slider];
}
