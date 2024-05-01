import 'package:flutter/material.dart';
import 'package:just_calc/features/main_display/presentation/widgets/calculator_button.dart';

class DigitButton extends StatelessWidget {
  const DigitButton({super.key, required this.digit});

  final String digit;

  @override
  Widget build(BuildContext context) {
    return CalculatorButton(text: digit);
  }
}
