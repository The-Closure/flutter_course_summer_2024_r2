main() {
//   String name;
//   name = "Hello";
//   print(name);

//   String? brithDate;
//   print(brithDate);

//   const age = "23";
//   // ! This line doesn't work
//   // age = "30";
//   print(age);

//   final mark;
//   mark = 20;

//   // ? Can't Be init
//   // const test;
//   // test = 30;

//   Map<String, Map<String, dynamic>> map = {
//     "Malek": {
//       "E": 90,
//       "Arabic": 59,
//     }
//   };

//   print(map.runtimeType);
//   print(map['Malek']!.values.elementAt(0));
//   print(map['Malek']!['E']);

//   List<int> testArray = [2, 3, 4, -2];
//   print(signFunc(getMultiplResult(testArray)));

//   print(signFuncWithOpitmize(testArray));
// }

// int getMultiplResult(List<int> array) {
//   int temp = 1;
//   for (var i = 0; i < array.length; i++) {
//     temp = temp * array[i];
//   }
//   if (temp == 0) {
//     return 0;
//   } else if (temp > 0) {
//     return 1;
//   } else {
//     return -1;
//   }
// }

// int signFunc(int result) {
//   if (result > 0) {
//     return 1;
//   } else if (result == 0) {
//     return 0;
//   } else {
//     return -1;
//   }
// }

// int signFuncWithOpitmize(List<int> array) {
//   int temp = 1;
//   if (array.contains(0)) {
//     return 0;
//   } else {
//     for (var i = 0; i < array.length; i++) {
//       temp = temp * array[i];
//     }
//     if (temp > 0) {
//       return 1;
//     } else {
//       return -1;
//     }
//   }

  Human ahmad = Human(n: 'Ahmad', g: true);
  ahmad.getDetails();
  print(ahmad.runtimeType);
  Human maryam = Human(n: "Maryam", g: false);
  maryam.getDetails();

  Employee Loye = Employee("Loey", true);
  Loye.getDetails();
  print(Loye.runtimeType);
  Loye.callMeBack();

  Human noor = Employee("NOOR", false);
  noor.getDetails();
  (noor as Employee).callMeBack();

  print(noor.runtimeType);
  num counter = 20.6;
  if (counter is double) {
    print(
        "Ex elit proident incididunt officia magna minim velit cillum occaecat elit qui laboris dolor.");
  } else {
    print("object");
  }
  print(counter.runtimeType);

  Cat cat = Cat();
  Dog dog = Dog();

  helloFrom(cat);


  
}

// ! OOP

class Human {
  late String name;
  late bool gender;

  Human({required String n, required bool g}) {
    name = n;
    gender = g;
  }

  getDetails() {
    if (gender) {
      print(name + "  " + "He is Male");
    } else {
      print(name + "  " + "She is Female");
    }
  }
}

class Employee extends Human {
  Employee(String n, bool g) : super(n: n, g: g);

  callMeBack() {
    print("Please I am Very Busy , So CALL me Back");
  }
}

class Dog extends Animal {}

class Cat extends Animal{}

abstract class Animal {}

helloFrom(Animal creautre) {
  if (creautre is Cat) {
    print("Hello From Cat");
  } else {
    print("Hello From Dog");
  }
}
