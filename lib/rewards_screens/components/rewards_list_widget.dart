import 'package:flutter/material.dart';
import 'package:hey_taxi/rewards_screens/components/reward_item.dart';

class RewardsList extends StatelessWidget {
  const RewardsList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> rewardsList = [
      {
        'reward_title': 'Extra Points',
        'reward_subtitle':
            'You will earn 70% more points every time you spend with PickUp',
        'reward_icon': Icons.money_outlined,
      },
      {
        'reward_title': 'Exclusive Support',
        'reward_subtitle':
            'Receive best of the best customer service for our Platinum members',
        'reward_icon': Icons.diamond_outlined,
      },
      {
        'reward_title': 'Special Offers',
        'reward_subtitle': 'Recieve Special Offers and Rewards in your City',
        'reward_icon': Icons.airplane_ticket_outlined,
      },
    ];
    return Column(
      children: [
        for (var rewardItem in rewardsList)
          Container(
            child: RewardItem(
                title: rewardItem['reward_title'],
                subtitle: rewardItem['reward_subtitle'],
                icon: rewardItem['reward_icon']),
          ),
      ],
    );
  }
}
