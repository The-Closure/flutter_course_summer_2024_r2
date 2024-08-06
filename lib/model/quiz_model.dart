// ignore_for_file: public_member_api_docs, sort_constructors_first
class QuestionModel {
  String questionSyntax;
  List<String> answers;
  int indexOfCorrectAnswer;
  QuestionModel({
    required this.questionSyntax,
    required this.answers,
    required this.indexOfCorrectAnswer,
  });
}
