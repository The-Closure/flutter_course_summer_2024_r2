class QuizModel {
  String question;
  List<dynamic> answers;
  int indexOfCorrectAnswer;
  String id;

  QuizModel(
      {required this.question,
      required this.answers,
      required this.indexOfCorrectAnswer,
      required this.id});

  static fromJson(Map<String, dynamic> json) {
    return QuizModel(
        question: json['question'],
        answers: json['answers'] ,
        indexOfCorrectAnswer: json['indexOfCorrectAnswer'],
        id: json['id']);
  }

}
