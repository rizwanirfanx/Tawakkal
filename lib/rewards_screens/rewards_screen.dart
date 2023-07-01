import 'package:flutter/material.dart';
import 'package:hey_taxi/components/credit_item.dart';
import 'package:hey_taxi/components/credits_card.dart';
import 'package:hey_taxi/components/navbar.dart';
import 'package:hey_taxi/rewards_screens/components/credits_component.dart';
import 'package:hey_taxi/rewards_screens/components/faq_item.dart';
import 'package:hey_taxi/rewards_screens/components/faqs.dart';
import 'package:hey_taxi/rewards_screens/components/food_reward.dart';

class RewardsScreen extends StatelessWidget {
  const RewardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Navbar(title: 'Tawakkal Rewards'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Discounts & Credits on Tawakkal'),
                  SizedBox(height: 10),
                  CreditsList(),
                  SizedBox(height: 20),
                  Divider(thickness: 2),
                  SizedBox(height: 20),
                  Text('Food'),
                  SizedBox(height: 10),
                  FoodRewards(),
                  SizedBox(height: 20),
                  Divider(thickness: 2),
                  SizedBox(height: 20),
                  Text('FAQs'),
		  FAQs(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
