import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:quiz/model/answer_model.dart';

class QuestionModel extends Equatable {
  final String id;
  final String topicName;
  final List<dynamic> questions;

  const QuestionModel({
    required this.id,
    required this.topicName,
    required this.questions,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "topicName": topicName,
      "questions": questions,
    };
  }

  // QuestionModel.fromDocumentSnapshot(DocumentSnapshot<Map<String, dynamic>> doc)
  //     : id = doc.id,
  //       topicName = doc.data()!["topicName"],
  //       questions = doc.data()!["questions"];

  factory QuestionModel.fromJson(
    String id,
    Map<String, dynamic> json,
  ) {
    return QuestionModel(
      id: id,
      topicName: json["topicName"],
      questions: json["questions"],
    );
  }

  List<Object?> get props => [
        topicName,
        questions,
      ];
}
