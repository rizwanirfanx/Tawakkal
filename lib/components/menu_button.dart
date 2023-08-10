import 'package:flutter/material.dart';
import 'package:hey_taxi/constants.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key, this.callback});

  final VoidCallback? callback;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Icon(Icons.menu, color: Colors.white),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
        ),
      ),
    );
  }
}
