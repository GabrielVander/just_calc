import 'package:flutter/material.dart';
import 'package:just_calc/features/main_display/presentation/widgets/calculator_button.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.action});

  final String action;

  @override
  Widget build(BuildContext context) {
    return CalculatorButton(
      text: action,
      backgroundColor: Theme.of(context).colorScheme.secondary,
      textColor: Theme.of(context).colorScheme.onSecondary,
    );
  }
}
