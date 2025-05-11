import 'package:flutter/material.dart';
import 'package:exercises/exercise_cases/sum_of_numbers.dart';
import 'package:exercises/exercise_cases/substraction.dart';

class ExercisesPage extends StatelessWidget {
  const ExercisesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exercises'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Flutter Exercises',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NumberAdderScreen(),
                  ),
                );
              },
              child: const Text('Number Addition Exercise'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NumberMinusScreen(),
                  ),
                );
              },
              child: const Text('Number Subtraction Exercise'),
            ),
          ],
        ),
      ),
    );
  }
}

class NumberAdderScreen extends StatelessWidget {
  const NumberAdderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Number Addition'), centerTitle: true),
      body: const NumberAdder(),
    );
  }
}

class NumberMinusScreen extends StatelessWidget {
  const NumberMinusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Subtraction'),
        centerTitle: true,
      ),
      body: const NumberMinus(),
    );
  }
}
