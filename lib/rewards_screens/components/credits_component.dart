import 'package:flutter/material.dart';
import 'package:hey_taxi/components/credit_item.dart';

class CreditsList extends StatelessWidget {
  const CreditsList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> offers = [
      {
        'reward_title': 'USD 20',
        'reward_subtitle': 'USD 20 in Tawakkal app',
        'points': '1000 points'
      },
      {
        'reward_title': 'USD 60',
        'reward_subtitle': 'USD 60 in Tawakkal app',
        'points': '3000 points'
      },
      {
        'reward_title': 'USD 100',
        'reward_subtitle': 'USD 100 in Tawakkal app',
        'points': '9000 points'
      }
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          for (var offer in offers)
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: CreditItem(
                  text: offer["reward_title"],
                  subtitle: offer["reward_subtitle"],
                  points: offer["points"]),
            ),
        ],
      ),
    );
  }
}
