import 'package:flutter/material.dart';

class Quetion extends StatelessWidget {
  final String quetionText;

  Quetion(this.quetionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        quetionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
