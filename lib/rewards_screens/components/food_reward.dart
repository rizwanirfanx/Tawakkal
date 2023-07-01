import 'package:flutter/material.dart';
import 'package:hey_taxi/rewards_screens/components/food_reward_item.dart';

class FoodRewards extends StatelessWidget {
  const FoodRewards({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> offers = [
      {
        'reward_title': 'Papa Jones Delicious Pizza in KC ',
        'reward_img':
            'https://gray-wmtv-prod.cdn.arcpublishing.com/resizer/l_ZlW86PPJ0CTOQ6SDMPW4Si8KU=/1200x675/smart/filters:quality(85)/cloudfront-us-east-1.images.arcpublishing.com/gray/YMFAE4MTJZD5RIN2ZAZII2RRII.jpg',
        'points': '1000 points'
      },
      {
        'reward_title': '50% off at Subway',
        'reward_img':
            'https://image.cnbcfm.com/api/v1/image/103849129-Untitled-1.jpg?v=1529472360&w=1920&h=1080',
        'points': '2600 points'
      },
      {
        'reward_title': '50% off at Little Caesars',
        'reward_img':
            'https://play-lh.googleusercontent.com/KJzDzM8DnjPiAgPMBJu-Zs1dnryV6M-Wyy55JEmfW-72oThGAHVJAOcQxvtMpWhpx3s',
        'points': '3800 points'
      },
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
              child: FoodRewardItem(
                  title: offer["reward_title"],
                  imageUrl: offer["reward_img"],
                  points: offer["points"]),
            ),
        ],
      ),
    );
  }
}
