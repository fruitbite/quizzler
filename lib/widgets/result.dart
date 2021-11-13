import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key, required this.score}) : super(key: key);

  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('You scored $score points'),
      ),
    );
  }
}
