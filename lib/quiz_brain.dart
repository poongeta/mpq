import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  // ignore: prefer_final_fields
  List<Question> _questionBank = [
    Question(q: '1 + 1 = 2', a: true),
    Question(q: 'น้ำเงิน+เขียว = ส้ม', a: false),
    Question(q: 'ทองเป็นอโลหะ', a: false),
    Question(q: 'TOI13 จัดที่ MWIT', a: true),
    Question(q: 'MWIT อยู่ที่ กทม.', a: false),
    Question(q: '1 + 1 = 3', a: false)
  ];
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool? getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
