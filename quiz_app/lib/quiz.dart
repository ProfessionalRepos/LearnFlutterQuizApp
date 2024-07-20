import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz(this.colors, {super.key});

  final List<Color> colors;

  @override
  State<Quiz> createState() {
    return _QuizState(colors);
  }
}

class _QuizState extends State<Quiz> {
  _QuizState(this.colors);

  final List<Color> colors;
  // class level variable
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    // introduce a method level variable
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: colors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                tileMode: TileMode.mirror),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
