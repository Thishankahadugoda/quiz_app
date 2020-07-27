import 'dart:io';

import 'quetion.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(q: 'sun is ariing at west on the earth', a: false),
    Question(q: 'cow\'s has three legs ', a: false),
    Question(q: 'sri lanka is asian county', a: true),
    Question(q: 'sun is ariing at east on the earth', a: false),
    Question(q: 'cat\'s has four legs ', a: true),
    Question(q: 'sri lanka is eupropiean county', a: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnwer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void resert() {
    _questionNumber = 0;
  }
}
