import 'package:flutter/material.dart';

class PillButton extends StatefulWidget {
  const PillButton({super.key, required this.text});
  final String text;

  @override
  State<PillButton> createState() => _PillButtonState();
}

class _PillButtonState extends State<PillButton> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: ElevatedButton(
        onPressed: () => {},
        child: Text(widget.text),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF205CBe),
          minimumSize: Size.fromHeight(40),
        ),
      ),
    );
  }
}
