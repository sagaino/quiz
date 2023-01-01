import 'package:equatable/equatable.dart';

class AnswerModel extends Equatable {
  final String questionText;
  final String imageUrl;
  final List<Map<String, dynamic>> answers;

  const AnswerModel({
    this.questionText = "",
    this.imageUrl = "",
    required this.answers,
  });

  factory AnswerModel.fromJson(
    // String id,
    Map<String, dynamic> json,
  ) =>
      AnswerModel(
        questionText: json["questionText"],
        imageUrl: json["imageUrl"],
        answers: json["answers"],
      );

  @override
  List<Object?> get props => [
        questionText,
        imageUrl,
        answers,
      ];
}
