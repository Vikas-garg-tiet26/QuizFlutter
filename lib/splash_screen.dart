import 'package:flutter/material.dart';

// import 'package:app2/questions.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Opacity(
          //try to avoid using opacity widget as it lead to performance dec.
          opacity: 0.5,
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
          ),
        ),
        const SizedBox(height: 50),
        const Text(
          'Learn Flutter in Fun Way!',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        const SizedBox(height: 20),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(52, 194, 170, 178)),
          label: const Text(
            'Start Quiz',
            style: TextStyle(color: Colors.white),
          ),
          icon: const Icon(Icons.arrow_forward_ios_rounded),
        )
      ]),
    );
  }
}
