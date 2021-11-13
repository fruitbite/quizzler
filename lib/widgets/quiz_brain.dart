import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizzler/model/queation.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Icon> _answersList = [];

  final List<Question> _questionList = [
    Question(
      'You can lead a cow down stairs but not up stairs',
      false,
    ),
    Question(
      'Approximately one quarter of human bones are in the feet.',
      true,
    ),
    Question(
      'A slug\'s blood is green.',
      true,
    ),
    Question(
      'It is illegal to pee in the Ocean in Portugal.',
      true,
    ),
    Question(
      'Buzz Aldrin\'s mother\'s maiden name was "Moon".',
      true,
    ),
    Question(
      'Some cats are actually allergic to humans.',
      true,
    ),
    Question(
      'No piece of square dry paper can be folded in half more than 7 times.',
      false,
    ),
    Question(
      'The total surface of 2 human lungs is approximately 70 square meters.',
      true,
    ),
    Question(
      'Google was originally called "Backrub".',
      true,
    ),
    Question(
      'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
      true,
    ),
    Question(
      'Chocolate affects a dog\'s nervous system; a few ounces are enough to kill a small dog',
      true,
    ),
    Question(
      'In London, UK, if you happen to die in the House of Parliment, you are technically entitled to a state funeral because the building is considered too sacred of a place.',
      true,
    ),
    Question(
      'The loudest sound produced by an animal is 188 decibels. That animal is African Elephant.',
      false,
    ),
  ];

  List<Icon> answerList() {
    return _answersList;
  }

  void addCorrect() {
    _answersList.add(const Icon(Icons.check, color: Colors.green));
  }

  void addFalse() {
    _answersList.add(const Icon(Icons.close, color: Colors.red));
  }

  void cleanAnswers() {
    _answersList.clear();
    _questionNumber = 0;
  }

  void nextQuestion() {
    if (_questionNumber < getLength() - 1) {
      _questionNumber++;
    } else {
      cleanAnswers();
    }
  }

  String getQuestionText() {
    return _questionList[_questionNumber].questionText;
  }

  bool getAnswer() {
    return _questionList[_questionNumber].answer;
  }

  int getLength() {
    return _questionList.length;
  }
}
