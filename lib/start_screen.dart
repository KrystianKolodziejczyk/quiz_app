import 'package:flutter/material.dart';

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
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(color: Colors.white, fontSize: 28),
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
