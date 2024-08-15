import 'package:api_exception/model/animal_modlel.dart';
import 'package:api_exception/service/animal_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LogInPage(),
    );
  }
}

class AnimalPage extends StatefulWidget {
  const AnimalPage({super.key});

  @override
  State<AnimalPage> createState() => _AnimalPageState();
}

class _AnimalPageState extends State<AnimalPage> {
  List<AnimalModlel> animal = [];
  TextEditingController name = TextEditingController();
  TextEditingController origin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextField(
                    controller: name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                    ),
                  ),
                  TextField(
                    controller: origin,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                    ),
                  ),
                  FloatingActionButton(onPressed: () async {
                    AnimalModlel animalModlel = AnimalModlel(
                        name: name.text,
                        avatar: "Hello",
                        origin: origin.text,
                        id: '0');
                    bool status = await createNewAnimal(animalModlel);
                    if (status) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Success"),
                        backgroundColor: Colors.green,
                      ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("There is no internet"),
                        backgroundColor: Colors.red,
                      ));
                    }
                  })
                ],
              ),
            ),
            width: 320,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
          ),
          Center(
              child: animal.isEmpty
                  ? CircularProgressIndicator()
                  : SizedBox(
                      height: 200,
                      child: ListView.builder(
                        itemCount: animal.length,
                        itemBuilder: (context, index) => ListTile(
                            leading: CircleAvatar(
                              child: Text(animal[index].id.toString()),
                            ),
                            title: Text(animal[index].name)),
                      ),
                    )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'aa',
        onPressed: () async {
        try {
          animal = await getOneAnimal();
          setState(() {});
        } catch (e) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("There is no internet"),
            backgroundColor: Colors.red,
          ));
        }
      }),
    );
  }
}

class LogInPage extends StatelessWidget {
  LogInPage({super.key});
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                controller: username,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                ),
              ),
              TextField(
                controller: password,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                ),
              ),
              FloatingActionButton(onPressed: () async {
                try {
                  Dio req = Dio();
                  var response = await req
                      .post('https://dummyjson.com/auth/login', data: {
                    "username": username.text,
                    "password": password.text
                  });
                  print(response.data['token']);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Hello Emily"),
                    backgroundColor: Colors.green,
                  ));
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnimalPage(),
                    ),
                  );
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("You are not authorzied"),
                    backgroundColor: Colors.red,
                  ));
                }
              })
            ],
          ),
        ),
        width: 320,
        height: 400,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
      ),
    );
  }
}
