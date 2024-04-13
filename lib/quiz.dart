import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  const Quiz(this.index, this.question, this.handler, {super.key});
  
  final Function handler;
  final List<Map<String, dynamic>> question;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: question[index]['questionText'],
        ),
        ...(question[index]['answer'] as List<Map<String, dynamic>>)
            .map((answer) {
          return Answer(() => handler(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
