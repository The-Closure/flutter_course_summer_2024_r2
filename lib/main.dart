import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(FifthPage());
}

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("First App"),
          leading: FlutterLogo(),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          child: Text("Hello "),
          width: 200,
          height: 200,
          color: Colors.blue,
        ),
        floatingActionButton: Text("Hello From Floating ACtion Button"),
        bottomNavigationBar: Text("Hello From BNB"),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            "Plan&Go",
          ),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            width: 60,
            height: 60,
            child: Center(
              child: Text(
                "S",
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ForthPage extends StatelessWidget {
  const ForthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 51, 51, 51),
          child: Center(
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                width: 200,
                height: 150,
                child: Center(
                  child: Icon(
                    Icons.discord,
                    size: 140,
                  ),
                )),
          ),
        ),
      ),
    );
  }
}

class FifthPage extends StatelessWidget {
  const FifthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue.shade200,
                Colors.blue,
              ],
            ),
          ),
          child: Center(
            child: Image.file(
              File(
                "C:/Users/HP/OneDrive/Desktop/logo.png",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
