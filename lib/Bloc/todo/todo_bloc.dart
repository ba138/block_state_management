import 'package:bloc/bloc.dart';
import 'package:block_statemanagement/Bloc/todo/todo_event.dart';
import 'package:block_statemanagement/Bloc/todo/todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final List<String> todoList = [];
  TodoBloc() : super(const TodoState()) {
    on<AddEvent>(_addtask);
    on<RemoveEvent>(_removeTodo);
  }
  void _addtask(AddEvent event, Emitter<TodoState> emiter) {
    todoList.add(event.task);
    emiter(
      state.copyWith(
        todoList: List.from(
          todoList,
        ),
      ),
    );
  }

  void _removeTodo(RemoveEvent event, Emitter<TodoState> emit) {
    todoList.remove(event.task);
    emit(
      state.copyWith(
        todoList: List.from(todoList),
      ),
    );
  }
}
