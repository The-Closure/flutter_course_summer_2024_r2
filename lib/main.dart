import 'package:finishing_bloc/blocs/counter_bloc/counter_bloc.dart';
import 'package:finishing_bloc/blocs/lamp_bloc/lamp_bloc.dart';
import 'package:finishing_bloc/blocs/post_bloc/post_bloc.dart';
import 'package:finishing_bloc/pages/lamp_page.dart';
import 'package:finishing_bloc/pages/post_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pages/counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => LampBloc(),
        ),
        BlocProvider(
          create: (context) => PostBloc()..add(GetAllPosts()),
        ),
      ],
      child: const MaterialApp(
        home: PostPage(),
      ),
    );
  }
}
