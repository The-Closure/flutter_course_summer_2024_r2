import 'package:dio/dio.dart';
import 'package:responsive_adaptive_project/model/quiz_model.dart';

Future<Product> getOneProduct() async {
  Dio dio = Dio();

  Response response = await dio.get('https://dummyjson.com/products/1');
  Product oneProduct = Product.fromMap(response.data);
  return oneProduct;
}
