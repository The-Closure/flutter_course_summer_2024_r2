import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextFromFelidPage(),
    );
  }
}

// ignore: must_be_immutable
class TextFromFelidPage extends StatelessWidget {
  TextFromFelidPage({super.key});

  final formKey = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller,
              onChanged: (value) {},
              validator: (name) {
                if (name == null || name.isEmpty) {
                  return 'enter your name';
                } else {
                  if (name.length < 5) return "we need at lest 4 charector";
                }
                return null;
              },
               autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                labelText: 'User Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  print(controller.text);
                }
              },
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal),
                child: Center(
                    child: Text(
                  'Enter',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
