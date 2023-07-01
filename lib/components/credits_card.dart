import 'package:flutter/material.dart';

class CreditsCard extends StatelessWidget {
  const CreditsCard(
      {super.key, required this.text, this.startColor, this.endColor});
  final String text;
  final Color? startColor;
  final Color? endColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.8, 1),
          colors: <Color>[
            startColor ?? const Color.fromARGB(255, 217, 156, 75),
            endColor ?? const Color.fromARGB(255, 252, 204, 142)
          ], // Gradient from https://learnui.design/tools/gradient-generator.html
          tileMode: TileMode.mirror,
        ),
      ),
      child: Center(
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );
  }
}
