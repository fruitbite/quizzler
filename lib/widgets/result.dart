import 'package:flutter/material.dart';
import 'package:quizzler/widgets/quiz_brain.dart';

class Result extends StatelessWidget {
  Result({Key? key}) : super(key: key);

  QuizBrain quizBrain = QuizBrain();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('You scored points'),
      ),
    );
  }
}
