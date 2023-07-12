import 'package:flutter/material.dart';
import 'package:rolldiceapp/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.primaryColor, this.secondaryColor, {super.key});

  final Color primaryColor;
  final Color secondaryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            primaryColor,
            secondaryColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
