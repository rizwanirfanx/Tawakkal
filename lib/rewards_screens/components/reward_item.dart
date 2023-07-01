import 'package:flutter/material.dart';
import './../../constants.dart';

class RewardItem extends StatelessWidget {
  const RewardItem(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon});
  final String title;
  final String subtitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              Text(
                subtitle,
              )
            ],
          ),
        ),
      ],
    );
  }
}
