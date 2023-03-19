import 'package:hey_taxi/Wallet/wallet_dashboard.dart';
import 'package:hey_taxi/auth_screens/login_screen.dart';
import 'package:hey_taxi/auth_screens/mobile_number_screen.dart';
import 'package:hey_taxi/auth_screens/otp_verification_screen.dart';
import 'package:hey_taxi/auth_screens/register_screen.dart';

var routes = {
  '/login': (context) => const LoginScreen(),
  '/register': (context) => const RegisterScreen(),
  '/otp': (context) => const OTPScreen(),
  '/phone_number': (context) => const MobileNumberScreen(),
  '/wallet_dashboard': (context) => const WalletDasboard(),
};
