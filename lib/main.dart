import 'package:flutter/material.dart';
import 'package:quiz/module/home_page/view/home_page_view.dart';
import 'package:quiz/module/quiz_page/view/quiz_page_view.dart';
import 'package:quiz/module/topic_page/view/topic_page_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  FirebaseApp app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF002c58)),
      routes: {
        '/': (context) => const HomePageView(),
        '/topics': (context) => const TopicPageView(),
        // '/quiz': (context) => const QuizPageView(),
      },
      // home: ,
    );
  }
}
