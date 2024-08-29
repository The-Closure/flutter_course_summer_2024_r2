import 'package:bloc_session_3/models/todo_model.dart';
import 'package:dio/dio.dart';

Future<List<TodoModel>> getAllTodo() async {
  Dio dio = Dio();
  var response = await dio.get('https://jsonplaceholder.typicode.com/todos',
      options: Options(
        sendTimeout: const Duration(seconds: 5),
      ));

  if (response.statusCode == 200) {
    List<TodoModel> todos = List.generate(
      response.data.length,
      (index) => TodoModel.fromMap(
        response.data[index],
      ),
    );
    return todos;
  } else {
    throw Exception('Server Error... Plesae try again later....');
  }
}
