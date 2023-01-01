import 'package:flutter/material.dart';
import 'package:quiz/model/question_model.dart';
import 'package:quiz/module/topic_page/controller/topic_page_controller.dart';
import 'package:quiz/module/topic_page/widget/topic_item.dart';
import 'package:quiz/services/question_services.dart';
import 'package:quiz/theme.dart';

class TopicPageView extends StatefulWidget {
  const TopicPageView({Key? key}) : super(key: key);

  @override
  State<TopicPageView> createState() => TopicPageController();
  Widget build(context, TopicPageController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        title: const Text(
          "Topics",
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: QuestionService.questions.length,
              itemBuilder: (BuildContext context, index) {
                var item = QuestionService.questions[index];
                return Container(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: TopicItem(
                    dataTopics: item,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
