import 'package:flutter/material.dart';
import 'package:restapi_with_flutter/model/cat_model.dart';
import 'package:restapi_with_flutter/model/quiz_model.dart';
import 'package:restapi_with_flutter/service/cat_service.dart';
import 'package:restapi_with_flutter/service/quiz_service.dart';

void main()  {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuiaPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CatModel? cat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: cat == null
            ? CircularProgressIndicator()
            : ListTile(
                subtitle: Text(cat!.origin),
                title: Text(cat!.name),
              ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        cat = await getAllCats();
        setState(() {});
      }),
    );
  }
}

class QuiaPage extends StatefulWidget {
  const QuiaPage({super.key});

  @override
  State<QuiaPage> createState() => _QuiaPageState();
}

class _QuiaPageState extends State<QuiaPage> {
  List<QuizModel> quiz = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: quiz.isEmpty
              ? CircularProgressIndicator()
              : ListView.builder(
                  itemCount: quiz.length,
                  itemBuilder: (context, index) => ListTile(
                    subtitle: Text(quiz[index].question),
                    title: Text(quiz[index].indexOfCorrectAnswer.toString()),
                  ),
                )),
      floatingActionButton: FloatingActionButton(onPressed: () async {
     quiz =   await getAllQuiz();
        setState(() {});
      }),
    );
  }
}
