import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

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
           Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.abel(
              color: Color.fromARGB(255, 216, 156, 228), 
              fontSize: 24,
              fontWeight: FontWeight.bold,
              ),
            ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_right_alt),
            onPressed: () {
              startQuiz();
            }, 
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
