import 'package:flutter/material.dart';
import 'package:quiz/theme.dart';

class AnswerItem extends StatelessWidget {
  final String title;
  final Function() onPressed;

  const AnswerItem({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Container(
        width: double.infinity,
        height: 55,
        margin: const EdgeInsets.only(
          bottom: 15,
        ),
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: kWhiteColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          child: Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: medium,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
