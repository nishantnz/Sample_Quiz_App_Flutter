import 'package:first_app/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestionText;
  final List<Map<String, Object>> questionTextObj;
  final int questionIndex;

  Quiz(
      {required this.answerQuestionText,
      required this.questionTextObj,
      required this.questionIndex,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionTextObj[questionIndex]['questionText'] as String,
        ), //we can write this instead of questions.elementAt(0)
        ...(questionTextObj[questionIndex]['answer']
                as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestionText(answer['score']),
              answer['text'] as String);
        })
      ],
    );
  }
}
