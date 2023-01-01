import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quiz/model/question_model.dart';

class QuestionService {
  final CollectionReference _questionRef =
      FirebaseFirestore.instance.collection("topics");
  // final FirebaseFirestore _db = FirebaseFirestore.instance;
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
      // QuerySnapshot<Map<String, dynamic>> result =
      //     await _db.collection("topics").get();
      // return result.docs
      //     .map(
      //       (docSnapshot) => QuestionModel.fromDocumentSnapshot(docSnapshot),
      //     )
      //     .toList();
    } catch (e) {
      rethrow;
    }
  }
}
