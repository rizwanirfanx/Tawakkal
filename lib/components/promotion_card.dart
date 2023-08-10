import 'package:flutter/material.dart';

class PromotionCard extends StatelessWidget {
  PromotionCard(
      {super.key,
      this.startColor,
      this.endColor,
      this.title,
      this.text,
      this.belowDividerText});
  final Color? startColor;
  final Color? endColor;
  final String? title;
  final String? text;
  final String? belowDividerText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 14),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? 'Gold Coupon',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            text ?? 'Dial coupon code and enjoy 100% off on your next 2  rides',
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Divider(color: Colors.white),
          Text(
            belowDividerText ?? 'Only apply to ride below 15 KM',
            style: TextStyle(color: Colors.white),
          ),
        ],

      ),
    );
  }
}
