import 'package:flutter/material.dart';
import 'package:hey_taxi/components/banner_component.dart';
import 'package:hey_taxi/components/pill_button.dart';
import 'package:hey_taxi/components/social_logins_buttons.dart';
import 'package:country_code_picker/country_code_picker.dart';

class MobileNumberScreen extends StatefulWidget {
  const MobileNumberScreen({super.key});

  @override
  State<MobileNumberScreen> createState() => _MobileNumberScreenState();
}

class _MobileNumberScreenState extends State<MobileNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const BannerComponent(
              title: 'Hello!', subtitle: 'Book a Ride with Hitaxi'),
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
							crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Form(
                  child: Column(
                    children: [
                      const Text(
                          'Enter your mobile number to Login or Register'),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Flexible(flex: 2, child: CountryCodePicker()),
                          Flexible(
                            flex: 4,
                            child: TextFormField(
                              decoration:
                                  InputDecoration(hintText: '(518) 458 8877'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const PillButton(text: 'Submit'),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Don\'t have an account? '),
                    Text('Sign Up'),
                  ],
                ),
                const SizedBox(height: 10),
                const Text('or', textAlign: TextAlign.center,),
                const SizedBox(height: 10),
                const Text('Continue With', textAlign: TextAlign.center,),
                const SizedBox(height: 20),
                const SocialLoginsButtons(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
