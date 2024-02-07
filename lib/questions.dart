// // import 'dart:js';

import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'What are Main Building Blocks for Flutter UI? ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 25),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(112, 24, 57, 95),
                  fixedSize: const Size(350, 50)),
              child: const Text(
                'Functions',
                style: TextStyle(
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontSize: 21),
              ),
              // icon: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(112, 24, 57, 95),
                  fixedSize: const Size(350, 50)),
              child: const Text(
                'Components',
                style: TextStyle(
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontSize: 21),
              ),
              // icon: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(112, 24, 57, 95),
                  fixedSize: const Size(350, 50)),
              child: const Text(
                'Blocks',
                style: TextStyle(
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontSize: 21),
              ),
              // icon: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(112, 24, 57, 95),
                  fixedSize: const Size(350, 50)),
              child: const Text(
                'Widgets',
                style: TextStyle(
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontSize: 21),
              ),
              // icon: const Icon(Icons.arrow_forward_ios_rounded),
            )
          ],
        ),
      ),
    );
  }
}
