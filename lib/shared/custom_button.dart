import 'package:flutter/material.dart';
import 'package:quiz/theme.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;
  final bool isSencodary;

  const CustomButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    required this.onPressed,
    this.margin = EdgeInsets.zero,
    this.isSencodary = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!isSencodary) {
      return Container(
        width: width,
        height: 55,
        margin: margin,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: kBlueColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          child: Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
        ),
      );
    } else {
      return Container(
        width: width,
        height: 55,
        margin: margin,
        child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            side: BorderSide(
              color: kBlueColor,
              width: 2,
            ),
          ),
          child: Text(
            title,
            style: blueTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }
  }
}
