import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int FinalScore;
  final VoidCallback resetFunction;
  Result(this.FinalScore, this.resetFunction);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 200),
          Text(
            'You Score is: $FinalScore',
            style: TextStyle(fontSize: 46),
          ),
          SizedBox(height: 70),
          FlatButton(
            onPressed: resetFunction,
            child: Text(
              'Reset the Quiz',
              style: TextStyle(color: Colors.blue, fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
