import 'package:app2/data/response.dart';
import 'package:app2/questionscreen.dart';
import 'package:app2/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:app2/resultscreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  //underscore is used to make it a private class .
  var activeState = 'start-screen';

  // ---------------------------------------------------------------------------init state is replaced by ternary and conditionals like if/else

  // Widget? activeState;
  // @override
  // void initState() {
  //   activeState = SplashScreen(changeScreen);
  //   super.initState();
  // }

  void changeScreen() {
    setState(() {
      activeState = 'question-screen';
    });
  }

  void swapScreen() {
    setState(() {
      activeState = 'swap-screen';
    });
  }

  List<String> selectedanswers = [];
  void chooseAnswer(String answer) {
    selectedanswers.add(answer);

    if (selectedanswers.length == questions.length) {
      setState(() {
        // selectedanswers = [];
        activeState = 'results-screen';
      });
    }
  }
  // git remote set-url origin new.git.url/here

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = SplashScreen(changeScreen);

    if (activeState == 'start-screen') {
      setState(() {
        SplashScreen(changeScreen);
      });
    }
    if (activeState == 'question-screen') {
      screenWidget = QuestionScreen(
        onSelectanswer: chooseAnswer,
      );
    }

    if (activeState == 'results-screen') {
      screenWidget =
          ResultsScreen(chosenanswer: selectedanswers, swap: swapScreen);
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 1, 21, 57),
          Color.fromARGB(255, 129, 172, 193)
        ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
        // child: const SplashScreen(),
        child: screenWidget,
      ),
    );
  }
}
