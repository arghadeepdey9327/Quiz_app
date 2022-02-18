import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionNumber;
  Question(this.questionNumber);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        questionNumber,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
