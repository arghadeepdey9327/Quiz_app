import 'package:flutter/material.dart';
import 'QuestionsWithAnswers.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionNumber = 0;
  int finalScore = 0;
  void _resetQuiz() => setState(() {
        _questionNumber = 0;
        finalScore = 0;
      });
  void _answerChosen(int score) {
    finalScore += score;
    setState(() {
      _questionNumber++;
    });
  }

  static const List<Map> _questions = <Map>[
    {
      'questions': 'What\'s your name?',
      'answers': [
        {'text': 'papai', 'score': 10},
        {'text': 'rahul', 'score': 8},
        {'text': 'chotu', 'score': 6},
        {'text': 'sanu', 'score': 2}
      ],
    },
    {
      'questions': 'what\'s your fav color?',
      'answers': [
        {'text': 'purple', 'score': 10},
        {'text': 'green', 'score': 7},
        {'text': 'blue', 'score': 4},
        {'text': 'red', 'score': 2}
      ]
    },
    {
      'questions': 'what\'s your fav animal',
      'answers': [
        {'text': 'cat', 'score': 8},
        {'text': 'dog', 'score': 7},
        {'text': 'tiger', 'score': 6},
        {'text': 'lion', 'score': 3}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionNumber == 3
            ? Result(finalScore, _resetQuiz)
            : QuestionsWithAnswers(
                answerChosen: _answerChosen,
                questionNumber: _questionNumber,
                questions: _questions),
      ),
    );
  }
}
