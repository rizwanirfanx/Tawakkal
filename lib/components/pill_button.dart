import 'package:flutter/material.dart';
import 'package:hey_taxi/constants.dart';

class PillButton extends StatefulWidget {
  const PillButton(
      {super.key,
      required this.text,
      this.buttonColor,
      this.textColor,
      this.boxShadow,
      this.buttonBorderRadius,
      this.callback});
  final String text;
  final Color? buttonColor;
  final Color? textColor;
  final BoxShadow? boxShadow;
  final double? buttonBorderRadius;
  final VoidCallback? callback;

  @override
  State<PillButton> createState() => _PillButtonState();
}

class _PillButtonState extends State<PillButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.callback!();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
            color: widget.buttonColor ?? primaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(widget.buttonBorderRadius ?? 40),
            ),
            boxShadow: [
              widget.boxShadow ??
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 0), // changes position of shadow
                  ),
            ]),
        child: Text(
          widget.text,
          textAlign: TextAlign.center,
          style: TextStyle(color: widget.textColor ?? Colors.white),
        ),
      ),
    );
  }
}
