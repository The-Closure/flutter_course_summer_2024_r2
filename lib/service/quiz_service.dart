import 'package:dio/dio.dart';
import 'package:restapi_with_flutter/model/quiz_model.dart';

Future<List<QuizModel>> getAllQuiz() async {
  Dio req = Dio();

  var response =
      await req.get("https://66bb7c806a4ab5edd63891b2.mockapi.io/api/v1/Quiz");

  List<QuizModel> quiz = [];
  for (var element in response.data) {
    QuizModel newQuiz = QuizModel.fromJson(element);
    quiz.add(newQuiz);
  }
  return quiz;
}
