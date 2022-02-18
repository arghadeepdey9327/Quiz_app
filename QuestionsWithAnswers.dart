import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class QuestionsWithAnswers extends StatelessWidget {
  late final List<Map> questions;
  late final int questionNumber;
  late final Function answerChosen;
  QuestionsWithAnswers(
      {required this.answerChosen,
      required this.questionNumber,
      required this.questions});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 50),
        Question(
          questions.elementAt(questionNumber)['questions'],
        ),
        ...(questions[questionNumber]['answers'].map(
          (answer) =>
              Answer(() => answerChosen(answer['score']), answer['text']),
        ))
      ],
    );
  }
}
