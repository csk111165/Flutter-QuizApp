import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  // to acces the summary which is in the for List<Map<String, Object>> from the results_screen
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: summaryData.map((data) {
          return Row(
            children: [
              // 'as int' for type conversion to int since we have defined Map<string, Object> so the values
              // are of type Object to make it specifit we need to use as int for typecasting and to.String /to make the final output as string as Text widget only accepts String
              Text(((data['question_index'] as int) +1).toString()) ,
              Expanded(
                child: Column(
                  children: [
                    Text(data['question'] as String),
                    const SizedBox(height: 5,),
                    Text(data['user_answer'] as String),
                    Text(data['correct_answer'] as String),
                  ],
                ),
              ),
            ],
          );
        },).toList(),
    );
  }
}