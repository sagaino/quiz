import 'package:flutter/material.dart';
import 'package:quiz/model/question_model.dart';
import 'package:quiz/module/quiz_page/view/quiz_page_view.dart';
import 'package:quiz/theme.dart';

class TopicItem extends StatelessWidget {
  final QuestionModel dataTopics;
  const TopicItem({
    super.key,
    required this.dataTopics,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => QuizPageView(
            dataTopics.questions,
          ),
        ),
      ),
      child: Container(
        width: double.infinity,
        height: 60,
        margin: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        decoration: BoxDecoration(
          color: kLightBlueColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                dataTopics.topicName.toString(),
                style: whiteTextStyle.copyWith(
                  fontSize: 16.0,
                  fontWeight: medium,
                ),
              ),
              Icon(
                Icons.play_arrow,
                size: 24.0,
                color: kWhiteColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
