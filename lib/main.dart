import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

PageController controller = PageController();
List<Widget> page = [
  MyApp(),
  RowPage(),
  MyApp(),
  RowPage(),
  MyApp(),
  RowPage(),
];
int initPage = 0;

class Pageview extends StatelessWidget {
  const Pageview({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (initPage != page.length - 1) {
              initPage = initPage + 1;
            } else {
              initPage = 0;
            }
            // controller.nextPage(
            //     duration: Duration(milliseconds: 2000), curve: Curves.bounceIn);
            // controller.previousPage(
            //     duration: Duration(milliseconds: 200),
            //     curve: Curves.bounceInOut);
            controller.animateToPage(initPage,
                duration: Duration(microseconds: 10000),
                curve: Curves.bounceIn);
          },
        ),
        body: PageView(
          onPageChanged: (index) {
            print("this page is ${initPage + 1}");
          },
          physics: NeverScrollableScrollPhysics(),
          controller: controller,
          scrollDirection: Axis.vertical,
          children: page,
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
//width: 500,
          color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              const Text("Hello world"),
              Container(
                height: 200,
                width: 200,
                color: Colors.teal,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.teal,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RowPage extends StatelessWidget {
  const RowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.black,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.black,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 80,
                height: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('18:47'),
                    Text('30/07/2024'),
                  ],
                ),
              ),
              Icon(Icons.add_alert_outlined),
            ],
          ),
        ),
      ),
    );
  }
}
