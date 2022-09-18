import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questIndex = 0;
  int _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What is your favorite color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What is your favourite Music Genre?',
      'answer': [
        {'text': 'Blues', 'score': 10},
        {'text': 'Reggae', 'score': 2},
        {'text': 'Rap', 'score': 5},
        {'text': 'Pop', 'score': 2}
      ]
    },
    {
      'questionText': 'What is your favourite dance type?',
      'answer': [
        {'text': 'Contemporary', 'score': 10},
        {'text': 'freeStyle', 'score': 5},
        {'text': 'hipHop', 'score': 4}
      ]
    }
  ];

  void resetQuiz() {
    setState(() {
      _questIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questIndex = _questIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('my flutter app'),
        backgroundColor: Color.fromARGB(255, 237, 70, 10),
        foregroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: _questIndex < _questions.length //if
          ? Quiz(
              answerQuestionText: (_answerQuestion),
              questionTextObj: _questions,
              questionIndex: _questIndex,
            )
          : Result(_totalScore, resetQuiz), //else
    ));
  }
}
