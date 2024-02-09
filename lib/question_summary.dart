import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, this.yes, {super.key});

  final List<Map<String, Object>> summaryData;
  // final summarydata = summaryData;
  final bool yes;
  @override
  Widget build(BuildContext context) {
    Color yo = Colors.black;
    if (yes == true) {
      yo = Colors.blue;
    } else {
      yo = Colors.redAccent;
    }
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: summaryData.map(
            (data) {
              return Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: yo,
                        minimumSize: const Size.fromRadius(18),
                        foregroundColor: Colors.white),
                    child: Text(
                      ((data['questionNo'] as int) + 1).toString(),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 2.0, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['questionText'] as String,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 240, 240, 240),
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            data['userAnswer'] as String,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 0, 255, 208),
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            data['correctanswer'] as String,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 80, 254, 5),
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 5,
                          )
                        ],
                      ),
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
