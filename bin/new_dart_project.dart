// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:io';

abstract class Animal {
  late String name;

  Animal(String name) {
    this.name = name;
  }

  void voice(String kindOfVoice);
}

class Cat extends Animal {
  Cat(name) : super(name);

  @override
  void voice(String kindOfVoice) {
    print(kindOfVoice);
  }
}

class Dog extends Animal {
  Dog(name) : super(name);

  @override
  void voice(String kindOfVoice) {
    print("Howe Howe");
  }
}

// ? Functioal Paradaigm

void addTwoNumber(int first, int second) {
  print(first + second);
}

void crayFunction(Function f) {
  f();
}

main() async {
  var adder = addTwoNumber;
  adder(4, 6);

  var temp = () {
    print("object");
  };
  print(temp.runtimeType);
  crayFunction(temp);
  // Cat ketty = Cat("Hello");
  // ketty.voice("kindOfVoice");
  // Dog dog = Dog("World");
  // dog.voice('');
  // // ? 3 -  Hello - Hello From async
  // String message = await getData();
  // print("Hello");
  // print(message);

  // // !  Handle Excpetion
  // try {
  //   // ? Hello - 3 - Hello From Async
  //   String message1 = getData() as String;
  //   print("Hello");
  //   print(await message1);
  // } catch (e) {
  //   print("There is An Execption ${e}");
  // }

  // // ! Default Handling from Dart
  // int counter = 10;
  // print(counter / 0.0);

  // // ? Hello - Future<String> - 3
  // Future<String> message2 = getData();
  // print("Hello");
  // print(message2);

  // ? Start to OOP
  Person ahmad = Person(age: 30);
  ahmad.talk();
  ahmad.set("Ahmad");
  ahmad.talkAndSayMyName();

  print(ahmad.age);

  B b = B();
  b.hi();
}

Future<String> getData() async {
  await Future.delayed(Duration(seconds: 3));

  return "Hello From Asycn Function";
}

class Person {
  // ? properties
  String _name = "";
  late double age;
  Person({required this.age});

  set(String name) {
    _name = name;
  }

  // ? behavoir (methods)
  talk() {
    print("I am talking");
  }

  talkAndSayMyName() {
    print("I am ${_name} and I am Talking");
  }
}

class A {
  hi() {
    print("object");
  }
}

class B extends A {
  @override
  hi() {
    print("Hello From A");
  }
}
