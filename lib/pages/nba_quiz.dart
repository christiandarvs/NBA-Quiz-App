import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nba_quiz_app/custom_widgets/custom_button.dart';
import 'package:nba_quiz_app/logic/quiz.dart';

Quiz quiz = Quiz();

class NbaQuiz extends StatefulWidget {
  const NbaQuiz({super.key});

  @override
  State<NbaQuiz> createState() => _NbaQuizState();
}

class _NbaQuizState extends State<NbaQuiz> {
  void getAnswer(bool answer) {
    if (quiz.getAnswer() == answer) {
      quiz.userIsCorrect();
    }
    if (quiz.getCurrentIndex() >= quiz.questions.length - 1) {
      displayScore();
    }
  }

  void displayScore() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(
            'Congratulations! Your score is ${quiz.getScore()}',
            textAlign: TextAlign.center,
          ),
          title: Center(
              child: Text(
            '${quiz.getScore()} / ${quiz.questions.length}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          )),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  setState(() {
                    quiz.restartQuiz();
                  });
                },
                child: const Text('Try Again')),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  SystemNavigator.pop();
                },
                child: const Text('Exit'))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NBA Quiz'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Expanded(
                flex: 2,
                child: Text(
                  quiz.questions[quiz.getCurrentIndex()].question,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(fontSize: 19),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomButton(
                        label: 'true',
                        voidCallback: () {
                          getAnswer(true);
                          setState(() {
                            quiz.nextQuestion();
                          });
                        },
                        color: const Color(0xff7ED3B2),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomButton(
                        label: 'false',
                        color: const Color(0xffFF8787),
                        voidCallback: () {
                          getAnswer(false);
                          setState(() {
                            quiz.nextQuestion();
                          });
                        },
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
