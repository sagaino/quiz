import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quiz/model/question_model.dart';
import 'package:quiz/module/home_page/view/home_page_view.dart';
import 'package:quiz/module/quiz_page/view/quiz_page_view.dart';
import 'package:quiz/services/question_services.dart';

class HomePageController extends State<HomePageView> {
  static late HomePageController instance;
  late HomePageView view;

  @override
  void initState() {
    instance = this;
    QuestionService().fetchQuestion();
    fetchData();
    super.initState();
  }

  @override
  void dispose() => super.dispose();
  @override
  Widget build(BuildContext context) => widget.build(context, this);

  getRandomQuiz() {
    final random = Random();
    final randomIndex = random.nextInt(QuestionService.questions.length);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QuizPageView(
          dataQuestions[randomIndex].questions,
        ),
      ),
    );
  }

  List<QuestionModel> dataQuestions = [];

  void fetchData() async {
    List<QuestionModel> questions =
        await QuestionService().fetchQuestionWithModul();
    dataQuestions=questions;
  }
}
