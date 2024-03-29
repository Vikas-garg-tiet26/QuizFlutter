// import 'package:app2/data/response.dart';
import 'package:app2/data/response.dart';
import 'package:app2/question_summary.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:app2/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenanswer, required this.swap});

  final List<String> chosenanswer;
  final Function() swap;

  List<Map<String, Object>> getSummary() {
    //
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenanswer.length; i++) {
      summary.add({
        'questionNo': i,
        'questionText': questions[i].questions,
        'userAnswer': chosenanswer[i],
        'correctanswer': questions[i].answers[0],
      });
      // final bool ohh;
      // if (chosenanswer[i] == questions[i].answers[0]) {
      // ohh=true;
      // }
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummary();
    final totalcorrectans = questions.length;
    // final useranswer = chosenanswer;
    final correctans = summaryData.where((data) {
      return data["userAnswer"] == data["correctanswer"];
    }).length;

    return Container(
      padding: const EdgeInsets.all(25),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $correctans out of $totalcorrectans questions correctly!',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            QuestionSummary(getSummary(), true),
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
      ),
    );
  }
}
