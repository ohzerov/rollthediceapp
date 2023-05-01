import 'package:flutter/material.dart';
import 'dart:math';

Random random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceImg = 1;

  void rollDice() {
    int randomDiceId = random.nextInt(6) + 1;
    setState(() {
      currentDiceImg = randomDiceId;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentDiceImg.png",
          width: 150,
        ),
        Container(
          width: 130,
          margin: const EdgeInsets.only(top: 50),
          child: TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w100,
                fontSize: 30,
              ),
            ),
            child: const Text("ROLL"),
          ),
        ),
      ],
    );
  }
}
