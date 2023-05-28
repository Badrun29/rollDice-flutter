import 'package:first_project/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:first_project/StyleText.dart';
import 'package:first_project/dice_roller.dart';

const StarAligment = Alignment.topLeft;
const EndAligment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, {super.key});

  GradientContainer.purple({super.key})
      : color2 = Colors.blueAccent,
        color1 = Colors.purpleAccent;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: StarAligment,
          end: EndAligment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
