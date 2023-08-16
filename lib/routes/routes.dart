import 'package:flutter/material.dart';
import 'package:hey_taxi/Error/error_screen.dart';
import 'package:hey_taxi/Promotions/promotions_screen.dart';
import 'package:hey_taxi/Settings/change_password_screen.dart';
import 'package:hey_taxi/Settings/change_value.dart';
import 'package:hey_taxi/Settings/drop_off_screens/select_dropoff_location.dart';
import 'package:hey_taxi/Settings/personal_info_screen.dart';
import 'package:hey_taxi/Settings/settings_index_screen.dart';
import 'package:hey_taxi/Wallet/add_amount.dart';
import 'package:hey_taxi/Wallet/add_card.dart';
import 'package:hey_taxi/Wallet/card_verification_screen.dart';
import 'package:hey_taxi/Wallet/enter_amount.dart';
import 'package:hey_taxi/Wallet/tx_history.dart';
import 'package:hey_taxi/Wallet/wallet_dashboard.dart';
import 'package:hey_taxi/all_screens.dart';
import 'package:hey_taxi/all_users_screen.dart.dart';
import 'package:hey_taxi/auth_screens/login_screen.dart';
import 'package:hey_taxi/auth_screens/mobile_number_screen.dart';
import 'package:hey_taxi/auth_screens/otp_verification_screen.dart';
import 'package:hey_taxi/auth_screens/register_screen.dart';
import 'package:hey_taxi/captain_screens/cancel_ride.dart';
import 'package:hey_taxi/captain_screens/captain_found.dart';
import 'package:hey_taxi/choose_ride_type.dart';
import 'package:hey_taxi/dashboard/dashboard_screen.dart';
import 'package:hey_taxi/dropoff_screens/dropoff_screen.dart';
import 'package:hey_taxi/history_screens/history.dart';
import 'package:hey_taxi/packages_screens/current_package.dart';
import 'package:hey_taxi/packages_screens/manage_payment.dart';
import 'package:hey_taxi/packages_screens/packages.dart';
import 'package:hey_taxi/pickup_screens/rate_your_captain.dart';
import 'package:hey_taxi/pickup_screens/select_pickup_location.dart';
import 'package:hey_taxi/report_form.dart';
import 'package:hey_taxi/report_screen.dart';
import 'package:hey_taxi/rewards_screens/reward_progress_screen.dart';
import 'package:hey_taxi/rewards_screens/rewards_screen.dart';
import 'package:hey_taxi/wallet_screens/wallet_screen.dart';
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
  '/error': (context) => const ErrorScreen(),
  '/promotions': (context) => const PromotionsScreen(),
  '/wallet_screen': (context) => const WalletScreen(),
  '/report': (context) => const ReportScreen(),
  '/report_form': (context) => const ReportForm(),
  '/settings': (context) => const SettingsScreen(),
  '/personal_info': (context) => const PersonalInfoScreen(),
  '/change_setting_value': (context) => const ChangeValue(),
  '/change_password': (context) => const ChangePasswordScreen(),
  '/rides_history': (context) => const HistoryScreen(),
  '/current_package': (context) => const CurrentPackageScreen(),
  '/packages': (context) => const PackagesScreen(),
  '/add_card': (context) => const AddCardScreen(),
  '/verify_card': (context) => const CardVerificationScreen(),
  '/add_amount': (context) => const AddAmountScreen(),
  '/rewards': (context) => const RewardsScreen(),
  '/reward_progress': (context) => const RewardProgressScreen(),
  '/dashboard' : (context) => const Dashboard(),
  '/tx_history' : (context) => const TXHistory(),
  '/enter_amount' : (context) => const EnterAmountScreen(),
	'/users' : (context) => const UserListScreen(),


};
