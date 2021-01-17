import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore,this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'you\'ve done great job!';
    } else if (resultScore <= 12) {
      resultText = 'you\'ve done nice job!';
    } else if (resultScore <= 16) {
      resultText = 'not too bad';
    } else {
      resultText = 'your don\'t know yourself...';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            onPressed: resetQuiz,
            child: Text('restart'),
          )
        ],
      ),
    );
  }
}
