import 'package:flutter/material.dart';

class StylizedText extends StatelessWidget {
  const StylizedText(this.outputText, {super.key});

  final String outputText;

  @override
  Widget build(BuildContext context) {
    return Text(
      outputText,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
