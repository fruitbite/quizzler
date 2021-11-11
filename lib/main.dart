// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quizzler/queation.dart';

void main() => runApp(const Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Question> questionList = [
    Question(
      questionText: 'You can lead a cow down stairs but not up stairs',
      answer: false,
    ),
    Question(
      questionText: 'Approximately one quarter of human bones are in the feet.',
      answer: true,
    ),
    Question(
      questionText: 'A slug\'s blood is green.',
      answer: true,
    ),
  ];
  List<Icon> answersList = [];

  int questionNumber = 0;

  void resetList() {
    if (questionList.length - 1 > questionNumber) {
      setState(() {
        ++questionNumber;
      });
    } else {
      setState(() {
        questionNumber = 0;
        answersList.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionList[questionNumber].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  textStyle: const TextStyle(color: Colors.white)),
              child: const Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool correctAnswer = questionList[questionNumber].answer;
                if (correctAnswer == true) {
                  answersList.add(Icon(Icons.check, color: Colors.green));
                } else {
                  answersList.add(Icon(Icons.close, color: Colors.red));
                }
                resetList();
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  textStyle: const TextStyle(color: Colors.white)),
              child: const Text(
                'False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool correctAnswer = questionList[questionNumber].answer;
                if (correctAnswer == false) {
                  answersList.add(Icon(Icons.check, color: Colors.green));
                } else {
                  answersList.add(Icon(Icons.close, color: Colors.red));
                }
                resetList();
              },
            ),
          ),
        ),
        Row(children: answersList)
      ],
    );
  }
}
