import 'package:flutter/material.dart';
import 'package:quiz/module/quiz_page/controller/quiz_page_controller.dart';
import 'package:quiz/module/result_page/controller/result_page_controller.dart';
import 'package:quiz/shared/custom_button.dart';
import 'package:quiz/theme.dart';
import 'package:share_plus/share_plus.dart';

class ResultPageView extends StatefulWidget {
  const ResultPageView({Key? key}) : super(key: key);

  @override
  State<ResultPageView> createState() => ResultPageController();
  Widget build(context, ResultPageController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            QuizPageController.instance.resetQuiz();
          },
        ),
        title: const Text(
          "Your Score",
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          heightFactor: 2.2,
          child: Column(
            children: [
              Stack(
                children: [
                  Center(
                    child: Container(
                      width: 120,
                      height: 120,
                      margin: const EdgeInsets.only(
                        bottom: 20,
                        top: 10,
                      ),
                      child: CircularProgressIndicator(
                        value: 1 -
                            (QuizPageController.instance.totalCorrect /
                                QuizPageController
                                    .instance.questionList.length),
                        strokeWidth: 10,
                        color: kRedColor,
                        backgroundColor: kGreenColor,
                      ),
                    ),
                  ),
                  Center(
                    heightFactor: 6.0,
                    child: Text(
                      "${QuizPageController.instance.totalCorrect}/${QuizPageController.instance.questionList.length}",
                      style: whiteTextStyle.copyWith(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              CustomButton(
                width: 250,
                title: "Share Your Score",
                onPressed: () {
                  Share.share(
                      "My score is ${QuizPageController.instance.totalCorrect}/${QuizPageController.instance.questionList.length}");
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
              // Text(
              //   "Your Report",
              //   style: whiteTextStyle.copyWith(
              //       fontSize: 20.0, fontWeight: semiBold),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
