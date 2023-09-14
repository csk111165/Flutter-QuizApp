import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';


class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

  var currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {

    final currentQuestion = questions[currentQuestionIndex];

    void answerQuestion(String answer) {
      widget.onSelectAnswer(answer);
      setState(() {
        currentQuestionIndex++;
      });
      
    }

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Color.fromARGB(255, 239, 169, 238),
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
              ),
            const SizedBox(height: 30),
            // dynamically creating the AnswerButton using map and now adding the shuffle behaviour to the list
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer, 
                onTap: () {
                  answerQuestion(answer);
                }
                );
            })
            // ... dot is required because it will allow to merget the list into column list, otherwise Column will complain as it will encounter a new separate list, ... will help to merget the all the button list with the widget list as one 
          ],
        ),
      ),
    );
  }
}
