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
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
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
          child: activeScreen,
        ),
      ),
    );
  }
}
