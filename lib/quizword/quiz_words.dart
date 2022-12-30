import 'package:flutter/material.dart';
import 'package:random_words/quizword/quiz.dart';
import 'package:random_words/quizword/result.dart';

class QuizWord extends StatefulWidget {
  const QuizWord({super.key});

  @override
  State<QuizWord> createState() => _QuizWordState();
}

class _QuizWordState extends State<QuizWord> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Elephant', 'score': 11},
        {'text': 'Lion', 'score': 5},
        {'text': 'Monkey', 'score': 9}
      ]
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Maxine', 'score': 1},
        {'text': 'Maxinated', 'score': 1},
        {'text': 'Maxined', 'score': 1}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    if (_questionIndex < _questions.length) {
      print('we have more questions');
    } else {
      print('No more questions!');
    }
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Words'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(_totalScore, _resetQuiz),
    );
  }
}
