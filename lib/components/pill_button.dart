import 'package:flutter/material.dart';
import 'package:hey_taxi/constants.dart';

class PillButton extends StatefulWidget {
  const PillButton({super.key, required this.text, this.buttonColor, this.textColor});
  final String text;
  final Color? buttonColor;
  final Color? textColor;

  @override
  State<PillButton> createState() => _PillButtonState();
}

class _PillButtonState extends State<PillButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.buttonColor ?? primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      child: TextButton(
        style: TextButton.styleFrom(foregroundColor: widget.textColor ?? Colors.white),
        onPressed: () => {},
        child: Text(widget.text),
      ),
    );
  }
}
