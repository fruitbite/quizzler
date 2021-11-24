import 'package:flutter/material.dart';
import 'package:quizzler/widgets/quiz_brain.dart';

// ignore: must_be_immutable
class Result extends StatelessWidget {
  Result({Key? key}) : super(key: key);

  QuizBrain quizBrain = QuizBrain();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('You scored points'),
      ),
    );
  }
}
