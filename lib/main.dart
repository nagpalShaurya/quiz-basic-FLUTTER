import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;      
    });

  }

    static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ]
  ;


  void _answerQuestion(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
        if(_questionIndex < _questions.length) {
      print('We have more questions!');
    }
      else {
        print("No more questions!!");
      }
    // print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {


    // questions = []; -> necessary to override for the list if variable is a var.

    //or we can use const questions, which defaultly makes question list as constant.

    // var dummy = ['Hello'];
    // dummy.add('Shaurya');
    // print(dummy);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length 
         ? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: _questions,)
         : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
