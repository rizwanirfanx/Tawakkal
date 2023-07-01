import 'package:flutter/material.dart';
import 'package:hey_taxi/components/credits_card.dart';

class CreditItem extends StatelessWidget {
  const CreditItem(
      {super.key,
      required this.text,
      required this.subtitle,
      required this.points,
      this.startColor,
      this.endColor});

  final String text;
  final String subtitle;
  final String points;
  final Color? startColor;
  final Color? endColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CreditsCard(text: text),
	  SizedBox(height: 10),
          Text(subtitle),
          Text(points)
        ],
      ),
    );
  }
}
