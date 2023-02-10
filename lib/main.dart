import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Blue'},
        {'text': 'Red'},
        {'text': 'Green'},
        {'text': 'Black'},
        {'text': 'White'},
      ],
    },
    {
      'questionText': 'What is your favorite piece of clothing?',
      'answers': [
        {'text': 'Jeans'},
        {'text': 'Shirts'},
        {'text': 'Jackets'},
        {'text': 'Shorts'},
        {'text': 'Socks'},
        {'text': 'Underwear'},
      ],
    },
    {
      'questionText': 'What is your favourite dressing style',
      'answers': [
        {'text': 'Classic'},
        {'text': 'Casual'},
        {'text': 'Elegant'},
        {'text': 'Sport'},
      ],
    },
    {
      'questionText': 'Where do you usually buy clothes from?',
      'answers': [
        {'text': 'Designer stores'},
        {'text': 'Shopping malls'},
        {'text': 'Outlets'},
        {'text': 'Regular stores'},
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MIS Lab2 191027'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_resetQuiz),
      ),
    );
  }
}
