import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var quetionIndex = 0;

  void answerQuetion() {
    quetionIndex = quetionIndex + 1;
    print(quetionIndex);
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
              Text(quetions[quetionIndex]),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: answerQuetion,
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
