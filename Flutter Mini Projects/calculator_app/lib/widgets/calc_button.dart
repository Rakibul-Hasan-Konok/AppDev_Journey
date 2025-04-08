import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String btnText;
  final Color btnColor;
  final Color txtColor;
  final Function(String) onPressed;

  const CalcButton({
    super.key,
    required this.btnText,
    required this.btnColor,
    required this.txtColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(btnText),
      style: ElevatedButton.styleFrom(
        backgroundColor: btnColor,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(20),
      ),
      child: Text(
        btnText,
        style: TextStyle(fontSize: 35, color: txtColor),
      ),
    );
  }
}
