import 'package:flutter/material.dart';

class VerticalButton extends StatefulWidget {
  VerticalButton(
      {super.key,
      required this.text,
      required this.callback,
      required this.iconData});
  String text;
  VoidCallback callback;
  IconData iconData;

  @override
  State<VerticalButton> createState() => _VerticalButtonState();
}

class _VerticalButtonState extends State<VerticalButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.callback,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(9, 30, 66, 0.25),
              blurRadius: 8,
              spreadRadius: -2,
              offset: Offset(
                0,
                4,
              ),
            ),
            BoxShadow(
              color: Color.fromRGBO(9, 30, 66, 0.08),
              blurRadius: 0,
              spreadRadius: 1,
              offset: Offset(
                0,
                0,
              ),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(widget.iconData, color: Colors.grey),
	    const SizedBox(height: 10),
            Text(widget.text),
          ],
        ),
      ),
    );
  }
}
