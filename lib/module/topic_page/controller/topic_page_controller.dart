import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:quiz/model/question_model.dart';
import 'package:quiz/module/topic_page/view/topic_page_view.dart';
import 'package:quiz/services/question_services.dart';

class TopicPageController extends State<TopicPageView> {
  static late TopicPageController instance;
  late TopicPageView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();
  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
