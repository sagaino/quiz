// import 'dart:convert';

// List<QuestionModel> questionFromJson(String str) => List<QuestionModel>.from(
//     json.decode(str).map((x) => QuestionModel.fromJson(x)));

// String questionToJson(List<QuestionModel> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class QuestionModel {
  String id;
  String topicName;
  List<Question> questions;

  QuestionModel({
    required this.id,
    required this.topicName,
    required this.questions,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "topicName": topicName,
      // "questions": questions,
    };
  }

  factory QuestionModel.fromJson(String id, Map<String, dynamic> json) => QuestionModel(
        id: id,
        topicName: json["topicName"],
        questions: List<Question>.from(
            json["questions"].map((x) => Question.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "topicName": topicName,
        "questions": List<dynamic>.from(questions.map((x) => x.toJson())),
      };
}

class Question {
  Question({
    required this.questionText,
    required this.imageUrl,
    required this.answers,
  });

  String questionText;
  String imageUrl;
  List<Answer> answers;

  factory Question.fromJson(Map<String, dynamic> json) => Question(
        questionText: json["questionText"],
        imageUrl: json["imageUrl"],
        answers:
            List<Answer>.from(json["answers"].map((x) => Answer.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "questionText": questionText,
        "imageUrl": imageUrl,
        "answers": List<dynamic>.from(answers.map((x) => x.toJson())),
      };
}

class Answer {
  Answer({
    required this.text,
    required this.score,
  });

  String text;
  int score;

  factory Answer.fromJson(Map<String, dynamic> json) => Answer(
        text: json["text"],
        score: json["score"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "score": score,
      };
}
