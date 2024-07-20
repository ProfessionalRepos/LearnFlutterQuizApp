import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

final List<Color> colors = List<Color>.from([
  const Color.fromARGB(255, 52, 145, 151),
  const Color.fromARGB(255, 92, 218, 235)
]);

void main() {
  runApp(Quiz(colors));
}
