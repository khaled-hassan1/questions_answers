import 'package:flutter/material.dart';
import 'package:questions_answers/quiz.dart';
import 'package:questions_answers/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answer': [
        {'text': 'red', 'score': 10},
        {'text': 'green', 'score': 5},
        {'text': 'blue', 'score': 3},
        {'text': 'black', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answer': [
        {'text': 'lion', 'score': 1},
        {'text': 'tiger', 'score': 1},
        {'text': 'cat', 'score': 1},
        {'text': 'dog', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite hoppy?',
      'answer': [
        {'text': 'moai tai', 'score': 6},
        {'text': 'Carate', 'score': 5},
        {'text': 'kung fu', 'score': 20},
        {'text': 'football', 'score': 5},
      ]
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Questions and Answers'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questionIndex, _questions, _answerQuestion)
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
