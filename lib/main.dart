import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 36, 9, 109),
                Color.fromARGB(145, 63, 35, 137)
              ],
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
