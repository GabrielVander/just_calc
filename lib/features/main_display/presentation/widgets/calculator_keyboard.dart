import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:just_calc/features/main_display/presentation/widgets/action_button.dart';
import 'package:just_calc/features/main_display/presentation/widgets/calculator_button.dart';
import 'package:just_calc/features/main_display/presentation/widgets/digit_button.dart';

class CalculatorKeyboard extends StatelessWidget {
  CalculatorKeyboard({super.key}) {
    _keyboardGrid = [
      [
        const DigitButton(digit: "7"),
        const DigitButton(digit: "8"),
        const DigitButton(digit: "9"),
        const ActionButton(action: "/")
      ],
      [
        const DigitButton(digit: "4"),
        const DigitButton(digit: "5"),
        const DigitButton(digit: "6"),
        const ActionButton(action: "*")
      ],
      [
        const DigitButton(digit: "1"),
        const DigitButton(digit: "2"),
        const DigitButton(digit: "3"),
        const ActionButton(action: "-")
      ],
      [
        CalculatorButton.ghost(),
        const DigitButton(digit: "0"),
        CalculatorButton.ghost(),
        const ActionButton(action: "+")
      ]
    ];
  }

  late final List<List<Widget>> _keyboardGrid;
  final double _spacing = 10.0;
  final int _columns = 4;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: _spacing),
      child: GridView.count(
        crossAxisSpacing: _spacing,
        mainAxisSpacing: _spacing,
        crossAxisCount: _columns,
        children: _keyboardGrid.expand((w) => w).toList(),
      ),
    );
  }
}
