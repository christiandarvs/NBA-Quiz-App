import 'question.dart';

class Quiz {
  int _currentQuestionIndex = 0;
  int _score = 0;
  List<QuizQuestion> questions = [
    QuizQuestion(
        question:
            '1.) Hakeem Olajuwon is the only NBA player to have a quadruple-double.',
        answer: false),
    QuizQuestion(
        question: '2.) Larry Bird has the most 50-40-90 season.',
        answer: false),
    QuizQuestion(
        question:
            '3.) Pete Maravich currently hold the college NCAA career scoring record.',
        answer: true),
    QuizQuestion(
        question: '4.) Magic Johnson had a winning coaching record.',
        answer: false),
    QuizQuestion(
        question: '5.) Shaquille O\'Neal never made a 3 pointer in his career.',
        answer: false),
    QuizQuestion(
        question: '6.) Kobe Bryant was drafted by Charlotte Hornets.',
        answer: true),
    QuizQuestion(
        question: '7.) Michael Jordan was drafted 1st to the Chicago balls.',
        answer: false),
    QuizQuestion(
        question:
            '8.) Tim Duncan holds the record for the most playoffs game played.',
        answer: false),
    QuizQuestion(
        question:
            '9.) Tim Duncan holds the record for the most playoffs game played.',
        answer: true),
    QuizQuestion(
        question:
            '10.) John Stockton holds the record for the most 82 games season in a career.',
        answer: true),
    QuizQuestion(
        question:
            '11.) Bill Russell did not make the final in 1967 due to be eliminated by Philadelphia.',
        answer: true),
    QuizQuestion(
        question:
            '12.) Wilt Chamberlain didn\'t win the MVP in the year he average 50.4PPG.',
        answer: true),
    QuizQuestion(
        question: '13.) Allen Iverson made it to the finals as an 8 seed.',
        answer: false),
    QuizQuestion(
        question: '14.) Dirk Nowitzki was not drafted by the Dallas Mavericks.',
        answer: false),
    QuizQuestion(
        question:
            '15.) Kareem Abdul-Jabbar won the defensive player of the year in 1973.',
        answer: false),
  ];
  void nextQuestion() {
    if (_currentQuestionIndex < questions.length - 1) {
      _currentQuestionIndex++;
    }
  }

  int getCurrentIndex() {
    return _currentQuestionIndex;
  }

  bool getAnswer() {
    return questions[_currentQuestionIndex].answer;
  }

  int getScore() {
    return _score;
  }

  void userIsCorrect() {
    _score++;
  }

  void restartQuiz() {
    _score = 0;
    _currentQuestionIndex = 0;
  }
}

/*
 1 false
 2 false
 3 true
 4 false
 5 false
 6 true
 7 false
 8 false 
 9 true
 10 true
 11 true
 12 true
 13 false
 14 false
 15 false

*/