import 'package:flutter/material.dart';
import 'package:intro_to_statfull/model/quiz_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = "Ahmad";

  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CheckBoxExample(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text(name),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(name);
          name = "Yaser";
          print(name);
          setState(() {});
        },
      ),
    );
  }
}

class CheckBoxExample extends StatefulWidget {
  const CheckBoxExample({super.key});

  @override
  State<CheckBoxExample> createState() => _CheckBoxExampleState();
}

class _CheckBoxExampleState extends State<CheckBoxExample> {
  bool isFav = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          FloatingActionButton(onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AnimatedPage(),
                ));
          })
        ],
      ),
      body: Center(
        child: CheckboxListTile(
            secondary: Hero(
              tag: 'animate',
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.pink),
                width: 40,
                height: 40,
              ),
            ),
            controlAffinity: ListTileControlAffinity.platform,
            title: Text("Mollit sit aliqua laboris qui sint."),
            subtitle: Text("Duis nostrud duis id mollit."),
            value: isFav,
            onChanged: (val) {
              isFav = val!;
              setState(() {});
            }),
      ),
    );
  }
}

class AnimatedPage extends StatefulWidget {
  const AnimatedPage({super.key});

  @override
  State<AnimatedPage> createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
  double width = 200;
  double height = 200;
  Color color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Hero(
          tag: 'animate',
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: width,
            height: height,
            color: color,
            child: Center(
              child: Text(
                "Hello World",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {});
        width = width + 60;
        height = height + 60;
        color = Colors.blue;
      }),
    );
  }
}

class DataOfNamesPage extends StatefulWidget {
  DataOfNamesPage({super.key});

  @override
  State<DataOfNamesPage> createState() => _DataOfNamesPageState();
}

class _DataOfNamesPageState extends State<DataOfNamesPage> {
  final List<String> names = [
    "Elyas",
    "Omar",
    "Rama",
    "Majd",
    "Dania",
    "Ahmad",
    "Abdalaziz"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(
            color: Colors.red,
            indent: 20,
            endIndent: 20,
          ),
          itemCount: names.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(names[index]),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          names.add("value");
        });
      }),
    );
  }
}

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});
  List<String> titles = ["Stay Calm", "Keep Going", "Plan and Go"];
  List<String> subtitles = [
    "Laboris sunt officia culpa ex deserunt incididunt consectetur.",
    "Tempor consequat incididunt et aliquip proident aute deserunt ut elit consequat velit amet quis.",
    "Sit nisi voluptate laboris excepteur ipsum et amet ipsum tempor aliqua tempor."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Center(
            child: Container(
              width: 300,
              height: 500,
              color: Colors.grey.shade200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(titles[index]), Text(subtitles[index])],
              ),
            ),
          );
        },
      ),
    );
  }
}

class QuizPage extends StatelessWidget {
  QuizPage({super.key});

  List<QuestionModel> question = [
    QuestionModel(
        questionSyntax: "How Old Are You ?",
        answers: ["20", "40", "100", "I am Died", "Helllo World"],
        indexOfCorrectAnswer: 1),
    QuestionModel(
        questionSyntax: "How Old Are You ?",
        answers: ["20", "40", "100", "I am Died", "Helllo World"],
        indexOfCorrectAnswer: 1),
    QuestionModel(
        questionSyntax: "How Old Are You ?",
        answers: ["20", "40", "100", "I am Died", "Helllo World"],
        indexOfCorrectAnswer: 1),
    QuestionModel(
        questionSyntax: "How Old Are You ?",
        answers: ["20", "40", "100", "I am Died", "Helllo World"],
        indexOfCorrectAnswer: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: question.length,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                Text(question[index].questionSyntax),
                Container(
                  height: 400,
                  child: ListView.builder(
                    itemCount: question[index].answers.length,
                    itemBuilder: (context, ind) {
                      return ListTile(
                        onTap: () {
                          if (ind == question[index].indexOfCorrectAnswer) {
                            print("Success");
                          } else {
                            print("Idoit");
                          }
                        },
                        title: Text(question[index].answers[ind]),
                      );
                    },
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
