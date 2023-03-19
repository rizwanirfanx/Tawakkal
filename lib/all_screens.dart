import 'package:flutter/material.dart';
import 'package:hey_taxi/components/Link.dart';

class AllScreensLinks extends StatelessWidget {
  const AllScreensLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(height: 40),
                Link(routeName: '/wallet_dashboard', text: 'Wallet')
              ],
            )),
      ),
    );
  }
}
