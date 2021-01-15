import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _quetions = const [
    {
      'quetionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black','score': 10,},
        {'text': 'Red','score': 5,},
        {'text': 'Green','score': 3,},
        {'text': 'White','score': 1,},
      ],
    },
    {
      'quetionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabit','score': 3,},
        {'text': 'Snake','score': 1,},
        {'text': 'Elephant','score': 5,},
        {'text': 'Lion','score': 10,},
      ],
    },
    {
      'quetionText': 'Who\'s your favorite instractor?',
      'answers': [
        {'text': 'Max','score': 10,},
        {'text': 'Jack','score': 1,},
        {'text': 'Poter','score': 3,},
        {'text': 'Kazuya','score': 5,},
      ],
    },
  ];

  var _quetionIndex = 0;
  var _totalScore = 0;

  void _answerQuetion(int score) {
    
    _totalScore += score;

    setState(() {
      _quetionIndex = _quetionIndex + 1;
    });
    print(_quetionIndex);
  }

  void _resetQuiz(){
    setState(() {
      _quetionIndex = 0;
      _totalScore = 0;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _quetionIndex < _quetions.length
            ? Quiz(
                answerQuetion: _answerQuetion,
                quetionIndex: _quetionIndex,
                quetions: _quetions,
              )
            : Result(_totalScore,_resetQuiz,),
      ),
    );
  }
}
