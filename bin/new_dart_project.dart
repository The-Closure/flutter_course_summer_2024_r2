void main() {
  // num counter = 20.5;
  // print(counter);

  // String name = 'Ahmad';
  // print(name);

  // bool isFavorite = true;
  // print(isFavorite);

  // isFavorite = false;
  // print(isFavorite);

  // print("=====================");
  // dynamic all = "Ahmad";
  // print(all.runtimeType);
  // all = 20;
  // print(all.runtimeType);
  // all = true;
  // print(all.runtimeType);

  // var age = 30;
  // print(age);

  // const products = "Apple";
  // print(products.runtimeType);

  // var category;
  // print(category);

  // int? count;
  // print(count);

  // List<String> names = ["Ahmad", "Noor", "Maya", "Alisar"];
  // print(names[3]);

  Map<String, String> mark = {
    "name": "Abdalaziz",
    "Math 3": "30",
    "ALgo": "90",
  };

  print(mark.values.elementAt(0));

  List<Map<String, String>> nestMap = [
    {
      "name": 'Hamed',
      "English": "100",
    },
  ];

  print(nestMap[0]['English']);

  Map<String, List<String>> nestListoFMap = {
    "names": [
      "Noor",
      "Yaser",
      "Hamed",
    ],
    "female names": [
      "Batol",
      "Leen",
      "Lama",
    ],
  };

  if (3 != 5) {
    print("😎");
  }

  print(nestListoFMap.values.elementAt(0).elementAt(2));
  addTwoNumber(20, secondNumber: 40);
  addTwoNumberWithOptional(40);

  int result = mulitpleAllNumber(first: 20, second: 20);
  print(result);

  print(mulitpleAllNumber(first: 40));
  print(fakeFunction());
}

void addTwoNumber(int firstNumber, {required int secondNumber}) {
  print(firstNumber);
  print(secondNumber);
  print("-----------------");
  print(firstNumber + secondNumber);
}

void addTwoNumberWithOptional(int firstNumber, {int secondNumber = 0}) {
  print(firstNumber);
  print(secondNumber);
  print("-----------------");
  print(firstNumber + secondNumber);
}

int mulitpleAllNumber({required int first, int second = 1}) {
  return first * second;
}

String fakeFunction() {
  String name = "Hello World";
  print('object');
  return name;
}
