import 'package:dice_app/component/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment=Alignment.topLeft;
const endAlignment=Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.color1, required this.color2});

final Color color1;
final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [color1,color2],
          
        )
      ),
      child: Center(
     child: DiceRoller(),
    ),
    );
  }
}