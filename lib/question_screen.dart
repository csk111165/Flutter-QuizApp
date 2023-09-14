import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';


class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

  @override
  Widget build(BuildContext context) {

    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Container(
          margin: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
               Text(
                currentQuestion.text,
                style: const TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
                ),
              const SizedBox(height: 30),
              // dynamically creating the AnswerButton using map
              ...currentQuestion.answers.map((answer) {
                return AnswerButton(answerText: answer, onTap: () {});
              })
              // ... dot is required because it will allow to merget the list into column list, otherwise Column will complain as it will encounter a new separate list, ... will help to merget the all the button list with the widget list as one 
            ],
          ),
        ),
      ),
    );
  }
}
