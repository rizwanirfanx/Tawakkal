import 'package:flutter/material.dart';

class BulletListItem extends StatelessWidget {
  const BulletListItem({super.key, required this.bulletListItemText});
  final String bulletListItemText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "\u2022",
          style: TextStyle(fontSize: 20, color: Colors.black38),
        ),
	SizedBox(width: 5),
	Text(bulletListItemText)
      ],
    );
  }
}
