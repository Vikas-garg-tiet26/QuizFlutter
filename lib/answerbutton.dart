import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answer, required this.onTap});
  final void Function() onTap;
  final String answer;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                backgroundColor: const Color.fromARGB(76, 174, 206, 238),
                foregroundColor: Colors.white),
            child: Text(
              answer,
              textAlign: TextAlign.center,
            )),
      ],
    );
  }
}
