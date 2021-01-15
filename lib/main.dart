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
        'Black',
        'Red',
        'Green',
        'White',
      ],
    },
    {
      'quetionText': 'What\'s your favorite animal?',
      'answers': [
        'Rabit',
        'Snake',
        'Elephant',
        'Lion',
      ],
    },
    {
      'quetionText': 'Who\'s your favorite instractor?',
      'answers': [
        'Max',
        'Jack',
        'Poter',
        'Kazuya',
      ],
    },
  ];

  var _quetionIndex = 0;

  void _answerQuetion() {
    if (_quetionIndex < _quetions.length) {
      print('We have more quetions!');
    }
    setState(() {
      _quetionIndex = _quetionIndex + 1;
    });
    print(_quetionIndex);
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
            : Result(),
      ),
    );
  }
}
