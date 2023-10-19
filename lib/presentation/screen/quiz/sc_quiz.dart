import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample/presentation/screen/quiz/AnswerButton.dart';
import 'package:sample/question.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizScreen();
  }
}

class _QuizScreen extends State<QuizScreen> {
  var currentQuestionIdx = 0;

  void onAnswerClick() {
    setState(() {
      currentQuestionIdx++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[currentQuestionIdx];

    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            question.text,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          ...question.shuffleAnswer.map(
              (answers) => AnswerButton(answer: answers, onTap: onAnswerClick))
        ],
      ),
    );
  }
}
