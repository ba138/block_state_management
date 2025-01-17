import 'package:equatable/equatable.dart';

abstract class TodoEvent extends Equatable {
  const TodoEvent();
}

class AddEvent extends TodoEvent {
  @override
  List<Object?> get props => [];
}

class RemoveEvent extends TodoEvent {
  @override
  List<Object?> get props => [];
}
