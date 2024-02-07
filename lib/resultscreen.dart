// import 'package:app2/data/response.dart';
import 'package:app2/data/response.dart';
import 'package:app2/question_summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:app2/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenanswer, required this.swap});

  final List<String> chosenanswer;
  final Function() swap;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenanswer.length; i++) {
      summary.add({
        'questionNo': i,
        'questionText': questions[i].questions,
        'userAnswer': chosenanswer[i],
        'correctanswer': questions[i].answers[0],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You answered X out of Y questions',
            style: GoogleFonts.aBeeZee(
                color: Colors.white70,
                fontSize: 25,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          QuestionSummary(getSummary()),
          const SizedBox(height: 30),
          TextButton.icon(
            onPressed: swap,
            icon: const Icon(Icons.restart_alt),
            label: const Text('Restart Quiz'),
            style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(30, 174, 206, 238),
                foregroundColor: const Color.fromARGB(255, 255, 255, 255)),
          )
        ],
      ),
    );
  }
}
