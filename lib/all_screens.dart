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
                Link(
                    routeName: '/select_pickup_location',
                    text: 'Select Pickup Location'),
                SizedBox(height: 40),
                Link(
                    routeName: '/rate_your_captain', text: 'Rate Your Captain'),
                SizedBox(height: 40),
                Link(
                    routeName: '/select_dropoff_location',
                    text: 'Select Drop off Location'),
                SizedBox(height: 40),
                Link(routeName: '/choose_ride_type', text: 'Choose Ride Type'),
                SizedBox(height: 40),
                Link(routeName: '/cancel_ride', text: 'Cancel Ride'),
                SizedBox(height: 40),
                Link(routeName: '/captain_found', text: 'Captain Found Screen'),
                SizedBox(height: 40),
                Link(
                    routeName: '/dropoff_screen', text: 'Drop Off Screen Main'),
                SizedBox(height: 40),
                Link(routeName: '/error', text: 'Error Screen'),
                SizedBox(height: 40),
                Link(routeName: '/promotions', text: 'Promotions Screen'),
                SizedBox(height: 40),
                Link(routeName: '/wallet_screen', text: 'Wallet Home Screen'),
                SizedBox(height: 40),
                Link(routeName: '/report', text: 'Report'),
                SizedBox(height: 40),
                Link(routeName: '/report_form', text: 'Report form'),
                SizedBox(height: 40),
                Link(routeName: '/settings', text: 'Settings'),
                SizedBox(height: 40),
                Link(routeName: '/personal_info', text: 'Personal Info'),
                SizedBox(height: 40),
                Link(
                    routeName: '/change_setting_value',
                    text: 'Change Setting Value'),
                SizedBox(height: 40),
                Link(routeName: '/change_password', text: 'Change password'),
                SizedBox(height: 40),
                Link(routeName: '/manage_payments', text: 'Manage Payments'),
                SizedBox(height: 40),
                Link(routeName: '/rides_history', text: 'Rides History'),
                SizedBox(height: 40),
                Link(routeName: '/current_package', text: 'Current Package'),
                SizedBox(height: 40),
                Link(routeName: '/packages', text: 'Packages Screen'),
                SizedBox(height: 40),
                Link(routeName: '/add_card', text: 'Add Card'),
                SizedBox(height: 40),
                Link(routeName: '/verify_card', text: 'Card Verification'),
                SizedBox(height: 40),
                Link(routeName: '/add_amount', text: 'Add Amount'),
                SizedBox(height: 40),
                Link(routeName: '/rewards', text: 'Rewards'),
                SizedBox(height: 40),
                Link(routeName: '/reward_progress', text: 'Reward Progress'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
