import 'package:dio/dio.dart';
import 'package:finishing_bloc/model/post_model.dart';

Future getPosts() async {
  Dio dio = Dio();

  var response = await dio.get('https://jsonplaceholder.typicode.com/posts');

  if (response.statusCode == 200) {
    List<PostModel> posts = List.generate(response.data.length, (index) {
      return PostModel.fromMap(response.data[index]);
    });
    return posts;
  } else {
    return response.statusCode;
  }
}
