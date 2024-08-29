import 'package:bloc_session_3/pages/no_internet_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/todo_bloc/todo_bloc.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<TodoBloc, TodoState>(
        listener: (context, state) {
          if (state is TodoError) {
            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(
            //     content: Text(
            //       state.errorMessage,
            //     ),
            //   ),
            // );
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NoInternetPage(
                  errorMessage: 'Please try again later .....',
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is TodoSuccess) {
            return ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.todos[index].title!),
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text(
                      state.todos[index].id.toString(),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: state.todos.length,
            );
          } else if (state is TodoError) {
            return Container();
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
