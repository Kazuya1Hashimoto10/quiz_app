import 'package:flutter/material.dart';

import './quetion.dart';
import './answer.dart';

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
  var _quetionIndex = 0;

  void _answerQuetion() {
    setState(() {
      _quetionIndex = _quetionIndex + 1;
    });
    print(_quetionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var quetions = [
      {
        'quetionText': 'What\'s your favorite color?',
        'answers': ['Black','Red','Green','White',],
      },
      {
        'quetionText': 'What\'s your favorite animal?',
        'answers': ['Rabit','Snake','Elephant','Lion',],
      },
      {
        'quetionText': 'Who\'s your favorite instractor?',
        'answers': ['Max','Jack','Poter','Kazuya',],
      },
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Quetion(quetions[_quetionIndex]['quetionText']),
              ...(quetions[_quetionIndex]['answers'] as List<String>).map((answer){
                return Answer(_answerQuetion,answer);
              }).toList()
            ],
          )),
    );
  }
}
