import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_getx_and_etc/controller/cat_controller.dart';
import 'package:graphql_getx_and_etc/graphql/user_service.dart';
import 'package:graphql_getx_and_etc/model/cat_model.dart';
import 'package:graphql_getx_and_etc/model/handling_model.dart';

void main() async {
  await initHiveForFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Get.theme,
      home: CatPage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getPost(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Text(snapshot.data.toString()),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class CatPage extends StatelessWidget {
  CatPage({super.key});

  var catService = Get.put(CatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() {
          if (catService.result.value is CatModel) {
            return Text(catService.result.value.toString());
          } else {
            return Text("There is An Error");
          }
        }),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        catService.getCat();
        Get.changeTheme(ThemeData.dark());
      }),
    );
  }
}
