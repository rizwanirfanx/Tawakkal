import 'package:flutter/material.dart';
import 'package:hey_taxi/Settings/drop_off_screens/select_dropoff_location.dart';
import 'package:hey_taxi/Wallet/wallet_dashboard.dart';
import 'package:hey_taxi/all_screens.dart';
import 'package:hey_taxi/auth_screens/login_screen.dart';
import 'package:hey_taxi/auth_screens/mobile_number_screen.dart';
import 'package:hey_taxi/auth_screens/otp_verification_screen.dart';
import 'package:hey_taxi/auth_screens/register_screen.dart';
import 'package:hey_taxi/captain_screens/cancel_ride.dart';
import 'package:hey_taxi/captain_screens/captain_found.dart';
import 'package:hey_taxi/choose_ride_type.dart';
import 'package:hey_taxi/dropoff_screens/dropoff_screen.dart';
import 'package:hey_taxi/pickup_screens/rate_your_captain.dart';
import 'package:hey_taxi/pickup_screens/select_pickup_location.dart';
import './../pickup_screens/pickup_screen_main.dart';

var routes = {
  '/all_screens': (context) => const AllScreensLinks(),
  '/login': (context) => const LoginScreen(),
  '/register': (context) => const RegisterScreen(),
  '/otp': (context) => const OTPScreen(),
  '/phone_number': (context) => const MobileNumberScreen(),
  '/wallet_dashboard': (context) => const WalletDasboard(),
  '/pickup_screen_main': (context) => const PickupScreen(),
  '/select_pickup_location': (context) => const SelectPickupLocation(),
  '/rate_your_captain': (context) => const RateYourCaptain(),
  '/select_dropoff_location': (context) => const SelectDropOffLocation(),
  '/choose_ride_type': (context) => const ChooseRideType(),
  '/cancel_ride': (context) => const CancelRide(),
  '/captain_found': (context) => const CaptainFound(),
  '/dropoff_screen': (context) => const DropoffScreen(),
};
