import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({super.key, required this.text, this.backgroundColor, this.textColor});

  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final double _borderRadius = 12.0;
  static const double _fontSize = 25.0;
  static const double _padding = 20.0;

  static Widget ghost() {
    return const SizedBox(
      height: _fontSize + _padding,
      width: _fontSize + _padding,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(_borderRadius)),
        padding: const EdgeInsets.all(_padding),
        backgroundColor: backgroundColor,
      ),
      child: Text(
        text,
        style: TextStyle(
          inherit: true,
          fontSize: _fontSize,
          color: textColor,
        ),
      ),
    );
  }
}
