import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: selectHandler,
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.green,
            shadowColor: Colors.greenAccent,
            elevation: 50,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0)),
            minimumSize: Size(100, 40), //////// HERE
          ),
          // style: ButtonStyle(
          //     backgroundColor:
          //         MaterialStateProperty.all(Color.fromARGB(255, 156, 243, 33)),
          //     foregroundColor:
          //         MaterialStateProperty.all(Color.fromARGB(255, 11, 10, 10))),
          child: Text(answerText)),
    );
  }
}
