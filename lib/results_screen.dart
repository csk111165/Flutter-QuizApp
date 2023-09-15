import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.choosenAnswers});

  final List<String> choosenAnswers;

  List<Map<String, Object>> getSummaryData() {

    final List<Map<String, Object>> summary = [];

    for(var i = 0; i < choosenAnswers.length; i++){
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0], // we have set the first list element as correct answer.
        'user_answer': choosenAnswers[i],
      });

    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length; //  to show on the results page
    final numCorrectQuestion = summaryData.where((data) {
      return (data['user_answer'] == data['correct_answer']);
    }).length; // since where returns list, but here we need the count , so length property on list will give desired count



    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text('You answered $numCorrectQuestion out of $numTotalQuestions questions correctly!'),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(summaryData: summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz!'),
            )
          ],
        ),
      ),
    );
  }
}
