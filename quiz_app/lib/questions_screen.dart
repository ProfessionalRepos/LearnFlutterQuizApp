import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  // default constructor is provided by dart
  @override
  Widget build(context) {
    return const Center(
      child: Text("This is from Questions inner class"),
    );
  }
}
