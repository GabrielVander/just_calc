import 'package:flutter/material.dart';
import 'package:just_calc/features/main_display/presentation/widgets/calculator_keyboard.dart';

class MainDisplay extends StatelessWidget {
  const MainDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Just Calc')),
      body: SafeArea(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      textAlign: TextAlign.right,
                      "302 x 75",
                    ),
                    Text(
                      textAlign: TextAlign.right,
                      "22650",
                    ),
                  ],
                ),
                CalculatorKeyboard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
