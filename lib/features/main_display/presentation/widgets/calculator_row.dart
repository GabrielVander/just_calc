import 'package:flutter/material.dart';

class CalculatorButtonRow extends StatelessWidget {
  const CalculatorButtonRow({super.key, required this.buttons});

  final List<Widget> buttons;
  final double _padding = 8.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(_padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: buttons,
      ),
    );
  }
}
