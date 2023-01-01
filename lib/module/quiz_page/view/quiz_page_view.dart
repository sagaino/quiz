import 'package:flutter/material.dart';
import 'package:quiz/model/question_model.dart';
import 'package:quiz/module/quiz_page/controller/quiz_page_controller.dart';
import 'package:quiz/module/quiz_page/widget/quiz_item.dart';
import 'package:quiz/theme.dart';

class QuizPageView extends StatefulWidget {
  final dynamic data;
  const QuizPageView(
    this.data, {
    Key? key,
    // required this.data,
  }) : super(key: key);

  @override
  State<QuizPageView> createState() => QuizPageController();
  Widget build(context, QuizPageController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        title: const Text(
          "Quiz Page",
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: InkWell(
                  onTap: () => Navigator.pushNamed(context, '/'),
                  child: Text(
                    "Exit",
                    style: whiteTextStyle.copyWith(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // TweenAnimationBuilder(
            //   tween: Tween(begin: controller.waktuAwal, end: controller.waktuAkhir),
            //   duration: const Duration(seconds: 3),
            //   onEnd: () async {
            //     print("done");
            //     controller.addQuestIndex();
            //   },
            //   curve: Curves.linear,
            //   builder: (context, double value, _) {
            //     return Column(
            //       children: [
            //         LinearProgressIndicator(
            //           value: value,
            //           color: Colors.yellow,
            //         ),
            //       ],
            //     );
            //   },
            // ),
            LinearProgressIndicator(
              value: controller.timer?.value,
              color: Colors.yellow,
            ),

            const SizedBox(
              height: 15.0,
            ),

            controller.questIndex < data.length
                ? QuizItem(
                    answerQuestion: (e) => controller.answerQuestion(e),
                    questionIndex: controller.questIndex,
                    questions: data,
                  )
                : Text("asd"),
          ],
        ),
      ),
    );
  }
}
