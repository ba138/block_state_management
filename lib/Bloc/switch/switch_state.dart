import 'package:equatable/equatable.dart';

class SwitchState extends Equatable {
  final bool isEnabled;
  const SwitchState({this.isEnabled = false});
  SwitchState copyWith({bool? isEnabled}) {
    return SwitchState(isEnabled: isEnabled ?? this.isEnabled);
  }

  @override
  List<Object?> get props => [isEnabled];
}
