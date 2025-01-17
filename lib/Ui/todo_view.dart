import 'package:block_statemanagement/Bloc/todo/todo_bloc.dart';
import 'package:block_statemanagement/Bloc/todo/todo_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoView extends StatelessWidget {
  const TodoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: BlocBuilder<TodoBloc, TodoState>(
            builder: (context, state) {
              return ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    if (state.todoList.isEmpty) {
                      return Center(
                        child: Text("List is Empty"),
                      );
                    } else if (state.todoList.isNotEmpty) {
                      return ListTile(
                        leading: Text(
                          index.toString(),
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete,
                          ),
                        ),
                      );
                    } else {
                      return const SizedBox();
                    }
                  });
            },
          ),
        ),
      ),
    );
  }
}
