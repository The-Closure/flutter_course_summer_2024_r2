// ignore_for_file: public_member_api_docs, sort_constructors_first
class QuestionModel {
  String questionText;
  List<String> ansers;
  int corectAnserIndex;
  QuestionModel({
    required this.questionText,
    required this.ansers,
    required this.corectAnserIndex,
  });
}
