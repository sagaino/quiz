import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quiz/model/question_model.dart';

class QuestionService {
  final CollectionReference _questionRef =
      FirebaseFirestore.instance.collection("topics");

  static List questions = [];
  
  Future<List<void>> fetchQuestion() async {
    try {
      QuerySnapshot result = await _questionRef.get();
      if (questions.isEmpty) {
        List<void> data = result.docs.map((item) {
          return questions.add(
            item.data(),
          );
        }).toList();
        return data;
      }
      return questions;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<QuestionModel>> fetchQuestionWithModul() async {
    try {
      QuerySnapshot result = await _questionRef.get();
      List<QuestionModel> data = result.docs.map((item) {
        return QuestionModel.fromJson(
          item.id,
          item.data() as Map<String, dynamic>,
        );
      }).toList();
      return data;
    } catch (e) {
      rethrow;
    }
  }
}
