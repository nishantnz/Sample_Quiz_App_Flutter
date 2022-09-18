import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;
  Result(this.totalScore, this.resetQuiz, {super.key});

  String get resultPhrase {
    String resultText;
    if (totalScore < 10) {
      resultText = "Nice try Better Luck next time!🙂";
    } else if (totalScore <= 20 && totalScore >= 10) {
      resultText = "You have an Amazing personality";
    } else if (totalScore <= 30 && totalScore >= 20) {
      resultText = "You are an excellent person";
    } else {
      resultText = "you are bad person";
    }
    print(totalScore);
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Center(
              child: Text(
                resultPhrase,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 30, color: Color.fromARGB(255, 236, 157, 0)),
              ),
            ),
            Center(
              child: Text(
                "total score $totalScore",
                style: const TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(240, 236, 0, 0),
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            TextButton(onPressed: resetQuiz, child: Text("Restart the Quiz"))
          ],
        ));
  }
}
