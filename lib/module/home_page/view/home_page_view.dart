import 'package:flutter/material.dart';
import 'package:quiz/module/home_page/controller/home_page_controller.dart';
import 'package:quiz/shared/custom_button.dart';
import 'package:quiz/theme.dart';
import 'package:share_plus/share_plus.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => HomePageController();
  Widget build(context, HomePageController controller) {
    controller.view = this;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(bottom: defaultMargin),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/quiz_icon.png',
                  ),
                ),
              ),
            ),
            Text(
              "Flutter Quiz App",
              style: whiteTextStyle.copyWith(
                fontSize: 16.0,
                fontWeight: bold,
              ),
            ),
            Text(
              "Learn + Take Quiz + Repeat",
              style: whiteTextStyle.copyWith(
                fontSize: 14.0,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              height: 80.0,
            ),
            CustomButton(
              title: "PLAY",
              width: 300,
              margin: const EdgeInsets.only(bottom: 15),
              onPressed: () {
                // Navigator.pushNamed(context, '/quiz');
                controller.getRandomQuiz();
              },
            ),
            CustomButton(
              isSencodary: true,
              title: "TOPICS",
              width: 300,
              margin: const EdgeInsets.only(bottom: 15),
              onPressed: () {
                Navigator.pushNamed(context, '/topics');
              },
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Share.share(
                        "https://play.google.com/store/apps/details?id=com.PlayCastle.LattoLattoGame");
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.share,
                        color: kBlueColor,
                        size: 24.0,
                      ),
                      Text(
                        'Share',
                        style: whiteTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 40.0,
                ),
                InkWell(
                  onTap: () {
                    Share.share(
                        "https://play.google.com/store/apps/details?id=com.PlayCastle.LattoLattoGame");
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 24.0,
                        color: Colors.yellow[400],
                      ),
                      Text(
                        'Rate Us',
                        style: whiteTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
