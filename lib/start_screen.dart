import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        // it will allow to take the min size, ie, size of the image itself
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png', 
             width: 300,
             color: Color.fromARGB(81, 225, 185, 173),

            ),
          const SizedBox(height: 80),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Color.fromARGB(255, 227, 207, 231),
              fontSize: 20,
            ),
            ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_right_alt),
            onPressed: () {}, 
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            label: const Text(
              'Start Quiz',
              ),
            ),
        ],
      ),
    );
  }
}
