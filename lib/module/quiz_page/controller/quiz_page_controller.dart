import 'package:flutter/material.dart';
import 'package:quiz/module/quiz_page/view/quiz_page_view.dart';
import 'package:quiz/module/result_page/view/result_page_view.dart';
import 'package:quiz/services/question_services.dart';

class QuizPageController extends State<QuizPageView>
    with TickerProviderStateMixin {
  static late QuizPageController instance;
  late QuizPageView view;
  AnimationController? timer;
  int dur = 30;

  @override
  void initState() {
    instance = this;
    timer = AnimationController(
      value: 1,
      vsync: this,
      duration: Duration(seconds: dur),
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        // print(status);
        if (status == AnimationStatus.completed) {
          if (questIndex < questionList.length - 1) {
            setState(() {
              questIndex = questIndex + 1;
              timer?.forward(from: 1.0);
              timer?.animateTo(0.0);
            });
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ResultPageView()),
            );
          }
        }
      })
      ..animateTo(0.0);
    super.initState();
  }

  @override
  void dispose() {
    timer?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  get questionList => view.data;

  var questIndex = 0;
  var totalScore = 0;
  var totalCorrect = 0;

  resetQuiz() {
    setState(() {
      questIndex = 0;
      totalScore = 0;
      totalCorrect = 0;
    });
  }

  answerQuestion(int score) {
    totalScore += score;
    if (score == 10) {
      totalCorrect++;
    }
    setState(() {
      questIndex = questIndex + 1;
      // timer?.forward(from: 1.0);
      // timer?.animateTo(0.0);
    });

    if (questIndex < questionList.length) {
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ResultPageView()),
      );
    }
  }
}
