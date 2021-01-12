import 'package:flutter/material.dart';

import './quetion.dart';

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
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Quetion(
                quetions[_quetionIndex]
              ),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: _answerQuetion,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print('answer2 chosen!'),
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('answer3 chosen!');
                },
              ),
            ],
          )),
    );
  }
}
