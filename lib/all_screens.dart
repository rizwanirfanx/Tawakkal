import 'package:flutter/material.dart';
import 'package:hey_taxi/components/Link.dart';

class AllScreensLinks extends StatelessWidget {
  const AllScreensLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: [
                SizedBox(height: 40),
                Link(routeName: '/wallet_dashboard', text: 'Wallet'),
                SizedBox(height: 40),
                Link(routeName: '/login', text: 'login'),
                SizedBox(height: 40),
                Link(routeName: '/register', text: 'Register'),
                SizedBox(height: 40),
                Link(routeName: '/otp', text: 'OTP'),
                SizedBox(height: 40),
                Link(routeName: '/phone_number', text: 'Phone Number'),
                SizedBox(height: 40),
                Link(routeName: '/pickup_screen_main', text: 'Pickup Screen'),
                SizedBox(height: 40),
                Link(routeName: '/select_pickup_location', text: 'Select Pickup Location'),
                SizedBox(height: 40),
                Link(routeName: '/rate_your_captain', text: 'Rate Your Captain'),
                SizedBox(height: 40),
                Link(routeName: '/select_dropoff_location', text: 'Select Drop off Location'),
                SizedBox(height: 40),
                Link(routeName: '/choose_ride_type', text: 'Choose Ride Type'),
                SizedBox(height: 40),
                Link(routeName: '/cancel_ride', text: 'Cancel Ride'),
                SizedBox(height: 40),
                Link(routeName: '/captain_found', text: 'Captain Found Screen'),
                SizedBox(height: 40),
                Link(routeName: '/dropoff_screen', text: 'Drop Off Screen Main'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
