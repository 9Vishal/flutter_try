import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

//void main()
//{
//runApp(MyApp());
//}
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

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your fav color?',
        'answers': ['zreserxtrdfc', 'red', 'green', 'white'],
      },
      {
        'questionText': 'What\'s your fav Animal?',
        'answers': ['Dog', 'cat', 'cow', 'hourse'],
      },
      {
        'questionText': 'What\'s your fav girl?',
        'answers': ['Bila', 'mila', 'gila', 'lila'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('meri pheli app'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>).map(
              (answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
          ],
        ),
      ),
    );
  }
}
