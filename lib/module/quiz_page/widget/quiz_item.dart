import 'package:flutter/material.dart';
import 'package:quiz/model/question_model.dart';
import 'package:quiz/module/quiz_page/widget/answer_item.dart';
import 'package:quiz/theme.dart';

class QuizItem extends StatelessWidget {
  final List<Question> questions;
  final int questionIndex;
  final Function answerQuestion;

  const QuizItem({
    super.key,
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Text(
                  questions[questionIndex].questionText.toString(),
                  style: blackTextStyle.copyWith(
                    fontSize: 20.0,
                    fontWeight: medium,
                  ),
                  textAlign: TextAlign.center,
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(questions[questionIndex].imageUrl),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),

        ...(questions[questionIndex].answers)
            .map(
          (item) {
            return AnswerItem(
              title: item.text.toString(),
              onPressed: () {
                answerQuestion(item.score);
              },
            );
          },
        ).toList(),
      ],
    );
  }
}
