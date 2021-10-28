import 'question.dart';


class QuizBrain {

  int _questionNumber = 0;  // to make private add underscore .mean only this dart can edit

  List<Question> _questionBank = [
    Question(
      q: 'Liverpool has won ucl 19/20 seasons.',
      a: true,
    ),
    Question(
      q: 'Liverpool beat barcelona at semi final.',
      a: true,
    ),
    Question(
      q: 'Liverpool buy messi.',
      a: false,
    ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1)
      _questionNumber++;
    print(_questionNumber);
    print(_questionBank.length);


  }


  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now RETURNING TRUE');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber=0;
  }
}