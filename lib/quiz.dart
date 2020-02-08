import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {

final int questionIndex;
final List<Map<String, Object>> questions;
final Function answerQuestion;

Quiz({@required this.questions, @required this.answerQuestion,@required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Question(
              questions[questionIndex]['questionText'],
            ),
            
          // Answer(_answerQuestion),
          // Answer(_answerQuestion),
          // Answer(_answerQuestion),

          ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
            return Answer(answerQuestion, answer);
          }).toList()

          ],
        );
  }
}