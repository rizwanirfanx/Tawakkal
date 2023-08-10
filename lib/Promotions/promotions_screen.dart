import 'package:flutter/material.dart';
import 'package:hey_taxi/components/navbar.dart';
import 'package:hey_taxi/components/promotion_card.dart';

class PromotionsScreen extends StatelessWidget {
  const PromotionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 10),
              Navbar(title: 'Promotions'),
              SizedBox(height: 20),
              PromotionCard(),
              SizedBox(height: 20),
              PromotionCard(
                title: 'Silver Coupon',
                text: 'Take 15 rides in 2 weeks and achieve silver card',
                startColor: Color.fromARGB(255, 137, 146, 170),
                endColor: Color.fromARGB(255, 209, 214, 227),
              ),
              SizedBox(height: 20),
              PromotionCard(
                title: 'Pickup Gift',
                text:
                    'Maintain \$200 in app\'s wallet for 1 week and get 50% off on very next ride',
                startColor: Color.fromARGB(255, 35, 76, 184),
                endColor: Color.fromARGB(255, 22, 123, 198),
              ),
              const Text(
                'Enjoy these current promotions while they last. We  will add future promotions as they become available',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
