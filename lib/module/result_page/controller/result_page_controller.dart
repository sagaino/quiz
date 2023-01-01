import 'package:flutter/material.dart';
import 'package:quiz/module/result_page/view/result_page_view.dart';
  
class ResultPageController extends State<ResultPageView> {
  static late ResultPageController instance;
  late ResultPageView view;
  
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