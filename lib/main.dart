import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuetion(){
    print('answer chosen!');
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Text('The quetion!'),
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
                onPressed: (){
                  print('answer3 chosen!');
                },
              ),
            ],
          )),
    );
  }
}
