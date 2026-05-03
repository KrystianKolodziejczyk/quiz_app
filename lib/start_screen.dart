import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  final void Function() startQuiz;

  const StartScreen({super.key, required this.startQuiz});

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(height: 60),
        Text(
          'Learn Flutter the fun way!',
          style: GoogleFonts.lato(
            fontSize: 24,
            color: const Color.fromARGB(236, 241, 212, 255),
          ),
        ),
        const SizedBox(height: 50),
        FilledButton.icon(
          onPressed: startQuiz,
          icon: const Icon(Icons.arrow_right_alt),
          label: Text('Start Quiz'),
        ),
      ],
    );
  }
}
