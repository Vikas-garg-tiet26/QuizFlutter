import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  // final summarydata = summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: summaryData.map(
            (data) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ((data['questionNo'] as int) + 1).toString(),
                    style: GoogleFonts.dmSans(
                      color: Colors.white70,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          data['questionText'] as String,
                          style: GoogleFonts.dmSans(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['userAnswer'] as String,
                          style: GoogleFonts.dmSans(
                            color: const Color.fromARGB(179, 242, 21, 150),
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          data['correctanswer'] as String,
                          style: GoogleFonts.dmSans(
                            color: const Color.fromARGB(179, 80, 254, 5),
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
