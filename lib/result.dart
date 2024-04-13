import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(this.resultScore, this.resetHandler, {super.key});
  final int resultScore;
  final VoidCallback resetHandler;
  String get resultPharases {
    String resultText;
    if (resultScore <= 12) {
      resultText = 'You did it!';
    } else if (resultScore <= 6) {
      resultText = 'Awsomeeeee!';
    } else if (resultScore <= 15) {
      resultText = 'so bad!';
    } else {
      resultText = 'Try Again!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            resultPharases,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextButton(
          onPressed: resetHandler,
          child: const Text('Restart Quiz!'),
        ),
      ],
    );
  }
}
