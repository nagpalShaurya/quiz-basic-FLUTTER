import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore,this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';

    if(resultScore >= 8) {
      resultText = 'You are awesome and innocent!';
    }
    else {
      resultText = 'Pretty Likable';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center (
                  child: Column(
                    children: <Widget>[
                      Text(resultPhrase, 
                            style: TextStyle(fontSize:36, 
                            fontWeight: FontWeight.bold),
                          ),
                      FlatButton(
                        child: Text('Restart Quiz!'),
                        textColor: Colors.blue, 
                        onPressed: resetHandler,
                      ),
                    ],
                  ),
    );
  }
}