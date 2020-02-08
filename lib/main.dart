import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import 'quiz.dart';
import 'result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

    static const _questions = [
      {'questionText': 'What\'s your favorite color?',
      'answers': ['Black','Red','Green','White'],
      },

      {'questionText': 'What\'s your favorite animal?',
      'answers': ['Cheetah','Tiger','Rabiit','Elephant'],
      },   
       {'questionText': 'Your favourite film star?',
      'answers': ['Disha Patani','Ranvir','Alia Bhatt','Ranbir'],
      },         
    ];
  void _answerQuestion() {

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
         : Result(),
      ),
    );
  }
}
