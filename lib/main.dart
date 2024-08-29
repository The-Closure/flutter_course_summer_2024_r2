import 'package:bloc_session_3/blocs/todo_bloc/todo_bloc.dart';
import 'package:bloc_session_3/config/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pages/todo_page.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoBloc()
        ..add(
          GetAllTodoEvent(),
        ),
      child: const MaterialApp(
        home: TodoPage(),
      ),
    );
  }
}
