import 'package:quizapp/Question.dart';
import 'Question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(QuestionText: 'Ms dhoni\'s birth date is 7 July 1981',
        QuestionAnswer: true),
    Question(
        QuestionText: 'following tournament is won by the Indian team under the captaincy of Dhoni?\n  \n1 India won the 2007 ICC World Twenty20 \n2. The Asia Cups in 2010 and 2016 \n 3. ICC Cricket World Cup, 2011 and \n4. ICC Champions Trophy 2017',
        QuestionAnswer: true),
    Question(
        QuestionText: 'four main principles of oop are : \nencapsulation \n polymorphism \n Inheritance \n Abstraction',
        QuestionAnswer: true),
    Question(QuestionText: 'You will get a job 😂 ', QuestionAnswer: true),
    Question(QuestionText: 'We Known as Paras😍', QuestionAnswer: true),
    Question(
        QuestionText: 'Approximately one quarter of human bones are in the feet.',
        QuestionAnswer: true),
    Question(QuestionText: 'A slug\'s blood is green.', QuestionAnswer: true),
    Question(QuestionText: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
        QuestionAnswer: true),
    Question(QuestionText: 'It is illegal to pee in the Ocean in Portugal.',
        QuestionAnswer: true),

  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].QuestionText;
  }

  bool getQuestionAns() {
    return _questionBank[_questionNumber].QuestionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returing true');
      return true;
    }
    else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}