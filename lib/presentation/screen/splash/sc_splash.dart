import 'package:flutter/material.dart';
import 'package:sample/presentation/screen/quiz/sc_quiz.dart';
import 'package:sample/presentation/screen/quiz/sc_start.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(onStart: switchScreen);
  }

  void switchScreen(){
    setState(() {
      activeScreen = const QuizScreen();
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Colors.blue,
          Colors.deepPurple,
        ],
      )),
      child: activeScreen,
    );
  }
}
