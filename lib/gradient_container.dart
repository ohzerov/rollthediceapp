import 'package:flutter/material.dart';
import 'package:flutterr_course_firstapp/dice_roller.dart';
//import 'package:flutterr_course_firstapp/styled_text.dart';

const gradientAlignment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorsList, {super.key});

  final List<Color> colorsList;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: gradientAlignment,
          radius: 2.5,
          colors: colorsList,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
