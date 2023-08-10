import 'package:flutter/material.dart';
import 'package:hey_taxi/components/banner_component.dart';
import 'package:hey_taxi/constants.dart';
import 'package:hey_taxi/rewards_screens/components/faqs.dart';
import 'package:hey_taxi/rewards_screens/components/reward_item.dart';
import 'package:hey_taxi/rewards_screens/components/rewards_list_widget.dart';

class RewardProgressScreen extends StatelessWidget {
  const RewardProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              width: double.infinity,
              color: primaryColor,
              child: Column(
                children: [
                  headerRow(),
                  const SizedBox(height: 20),
                  rideLeft(),
                  const SizedBox(height: 20),
                  progressBar(),
                  const SizedBox(height: 20),
                  const Text(
                    'Tawakkal Platinum',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Complete 20 more rides by March to reach Platinum Status',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Benefits',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                        RewardsList(),
                        Divider(),
                        FAQs(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget progressBar() {
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.white),
        borderRadius: BorderRadius.circular(20.0),
      ),
      height: 20.0,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Positioned.fill(
            child: LinearProgressIndicator(
              //Here you pass the percentage
              value: 0.7,
              color: Colors.white,
              backgroundColor: Colors.blue.withAlpha(50),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.0),
          )
        ],
      ),
    );
  }

  Widget headerRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.chevron_left, color: Colors.white),
        Icon(Icons.wallet_giftcard_outlined, size: 50, color: Colors.white),
        Container(),
      ],
    );
  }

  Widget rideLeft() {
    return Text(
      '5/15 Rides Completed',
      style: TextStyle(color: Colors.white),
    );
  }
}
