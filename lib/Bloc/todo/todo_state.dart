import 'package:equatable/equatable.dart';

class TodoState extends Equatable {
  final List<String> todoList;
  const TodoState({
    required this.todoList,
  });
  @override
  List<Object> get props => [todoList];
}
