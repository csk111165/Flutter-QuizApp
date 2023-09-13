import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
     activeScreen = 'question-screen';
    });
    
  }

  @override
  Widget build(BuildContext context) {

    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen'){
      screenWidget = const QuestionScreen();
    }

    return  MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 36, 9, 109),
                Color.fromARGB(145, 63, 35, 137)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}