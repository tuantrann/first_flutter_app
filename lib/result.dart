import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 16) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 20) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 25) {
      resultText = 'You are ... strange';
    } else {
      resultText = 'You are baddie!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              onPressed: resetHandler,
              child: Text('Restart Quiz!'),
              textColor: Colors.blue)
        ],
      ),
    );
  }
}
