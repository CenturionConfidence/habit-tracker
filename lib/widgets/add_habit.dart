import 'package:flutter/material.dart';

class NewHabit extends StatelessWidget {
  const NewHabit({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text(
            'New Habit',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 30),
        const Text(
          'What do you want to do?',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 30),
        Chip(
          onDeleted: () {},
          label: const Text('Reading Books'),
        )
      ],
    );
  }
}
