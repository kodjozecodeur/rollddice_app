import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  //rolldice function
  var currentDiceRoll = 2;
  void rollDice() {
    //codegoes here
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1; // value betwwen 0 and 6
      //treatment
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          child: const Text('Roll'),
        ),
      ],
    );
  }
}
