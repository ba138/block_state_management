import 'package:equatable/equatable.dart';

abstract class TodoEvent extends Equatable {
  const TodoEvent();
}

class AddEvent extends TodoEvent {
  final String task;
  const AddEvent({required this.task});
  @override
  List<Object?> get props => [task];
}

class RemoveEvent extends TodoEvent {
  final Object task;
  const RemoveEvent({required this.task});
  @override
  List<Object?> get props => [task];
}
