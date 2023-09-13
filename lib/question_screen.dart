import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';


class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

  final currentQuestion = questions[0];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
            ),
            ),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: currentQuestion.answers[0], 
            onTap: () {
              
            },
          ),
          const SizedBox(height: 10),
          AnswerButton(
            answerText: currentQuestion.answers[1], 
            onTap: () {
              
            },
          ),
          const SizedBox(height: 10),
          AnswerButton(
            answerText: currentQuestion.answers[2], 
            onTap: () {
              
            },
          ),
          const SizedBox(height: 10),
          AnswerButton(
            answerText: currentQuestion.answers[3], 
            onTap: () {
              
            },
          ),

        ],
      ),
    );
  }
}
