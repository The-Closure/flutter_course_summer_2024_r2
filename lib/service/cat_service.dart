import 'package:dio/dio.dart';
import 'package:restapi_with_flutter/model/cat_model.dart';

Future<CatModel> getAllCats() async {
  Dio req = Dio();

  var response = await req.get("https://freetestapi.com/api/v1/cats/1");
  CatModel cat = CatModel.fromMap(response.data);
  return cat;
}
