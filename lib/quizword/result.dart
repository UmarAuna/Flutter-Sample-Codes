import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final void Function()? resetHandler;

  const Result(this.resultScore, this.resetHandler, {super.key});

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are strange!';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhrase, textAlign: TextAlign.center,style: const TextStyle(
            fontSize: 40
          ),) ,
          ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
          onPressed: resetHandler ,
          child: Text('Restart Quiz!', )
          )
        ],
      ),
    );
  }
}