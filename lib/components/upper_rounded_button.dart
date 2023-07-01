import 'package:flutter/material.dart';
import 'package:hey_taxi/constants.dart';

class UpperRoundedButton extends StatelessWidget {
  const UpperRoundedButton(
      {super.key,
      required this.text,
      this.color,
      this.textColor,
      this.callback});
  final String text;
  final Color? color;
  final Color? textColor;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.only(bottom: 20, top: 10),
        decoration: BoxDecoration(
          color: color ?? primaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor ?? Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
