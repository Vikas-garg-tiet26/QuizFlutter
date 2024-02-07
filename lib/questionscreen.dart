import 'package:app2/answerbutton.dart';
import 'package:flutter/material.dart';
import 'package:app2/data/response.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectanswer});

  final void Function(String answer) onSelectanswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<QuestionScreen> {
  var currentquestionindex = 0;
  void answerQuestion(String selectedAnswer) {
    widget.onSelectanswer(selectedAnswer);
    setState(() {
      currentquestionindex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentquestionindex];
    return Container(
      margin: const EdgeInsets.all(50),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.questions,
              style: GoogleFonts.poppins(
                  color: Colors.white70,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getshuffledanswers().map((myanswers) {
              return AnswerButton(
                  answer: myanswers,
                  onTap: () {
                    answerQuestion(myanswers);
                  });
            }),
            const SizedBox(
              height: 30,
            ),
            // instead of individually generating these buttons we create a new list to dynamically generate these.
            // AnswerButton(
            //   answer: currentQuestion.answers[0],
            //   onTap: () {},
            // ),
            // const SizedBox(
            //   height: 15,
            // ),
            // AnswerButton(
            //   answer: currentQuestion.answers[1],
            //   onTap: () {},
            // ),
            // const SizedBox(
            //   height: 15,
            // ),
            // AnswerButton(
            //   onTap: () {},
            //   answer: currentQuestion.answers[2],
            // )
          ],
        ),
      ),
    );
  }
}
