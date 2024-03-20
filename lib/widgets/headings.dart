import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading(this.title, {super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w500,
          color: Theme.of(context).colorScheme.primary),
    );
  }
}
