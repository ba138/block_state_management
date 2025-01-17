import 'package:bloc/bloc.dart';
import 'package:block_statemanagement/Bloc/todo/todo_event.dart';
import 'package:block_statemanagement/Bloc/todo/todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(const TodoState());
}
