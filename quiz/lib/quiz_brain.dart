import 'questions.dart';

class QuizBrain{

  int _qnum = 0;

  List<Question> _questionBank = [
    Question('Q1Q1Q1Q1', true),
    Question('Q2Q2Q2Q2', true),
    Question('Q3Q3Q3Q3', false),
    Question('Q4Q4Q4Q4', false)
  ];

  String getQuestionText(){
    return _questionBank[_qnum].questionText;
  }

  bool getQuestionAns(){
    return _questionBank[_qnum].questionAnswer;
  }

  int getQuestionlen(){
    return _questionBank.length;
  }

  void nextQuestion(){
    if(_qnum < _questionBank.length-1){
      _qnum++;
    }
  }


}