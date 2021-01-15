import 'package:flutter/material.dart';

import './quetion.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> quetions;
  final int quetionIndex;
  final Function answerQuetion;

  Quiz({
    @required this.quetions,
    @required this.answerQuetion,
    @required this.quetionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Quetion(quetions[quetionIndex]['quetionText']),
        ...(quetions[quetionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuetion, answer);
        }).toList()
      ],
    );
  }
}
