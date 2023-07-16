import 'Questions.dart';

class Quiz {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(q: 'Some cats allergic to humans', a: true),
    Question(q: 'february 2023 has 29 day\'s', a: false),
    Question(q: 'march is a month of a calander', a: true),
    Question(q: 'the Penny Black is an old-fashioned coin?', a: false),
    Question(
        q: ' Glastonbury had been due to celebrate its 50th anniversary in June before the festival was cancelled?',
        a: true),
    Question(q: 'a heptagon has eight sides?', a: false),
    Question(q: ' the star sign Capricorn is represented by a goat?', a: true),
    Question(q: 'fish cannot blink?', a: true),
    Question(
        q: 'Ellie Goulding had the final number one single of the 2010s?',
        a: true),
    Question(
        q: 'Nepal is the only country in the world which does not have a rectangular flag?',
        a: true),
    Question(q: 'seahorses have no teeth or stomach?', a: true),
    Question(
        q: 'Switzerland shares land borders with four other countries?',
        a: false),
    Question(
        q: 'Last Christmas by Wham! reached number one during the 1984 festive season?',
        a: false),
    Question(
        q: 'the knight is the only piece in chess which can only move diagonally?',
        a: false),
    Question(
        q: 'Venezuela is home to the world’s highest waterfall. ', a: true),
    Question(
        q: 'Angel Falls is the highest waterfall in the world, with a height of 979 meters.',
        a: true),
  ];

  void Next() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
      print(_questionNumber);
      print(_questionBank.length - 1);
          }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool Check() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }
}
