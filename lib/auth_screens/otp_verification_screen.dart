import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hey_taxi/components/banner_component.dart';
import 'package:hey_taxi/components/pill_button.dart';
import 'package:hey_taxi/components/social_logins_buttons.dart';
import 'package:otp_text_field/otp_field.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreen();
}

class _OTPScreen extends State<OTPScreen> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const BannerComponent(
              title: 'Verification!',
              subtitle:
                  'Please Enter the 4-digit code sent to you at 418 348 8877'),
          const SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
							crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Form(
                  child: Column(
                    children: [
                      OTPTextField(
                          length: 5,
                          width: MediaQuery.of(context).size.width,
                          textFieldAlignment: MainAxisAlignment.spaceAround,
                          fieldWidth: 45,
                          outlineBorderRadius: 15,
                          style: TextStyle(fontSize: 17),
                          onChanged: (pin) {
                            print("Changed: " + pin);
                          },
                          onCompleted: (pin) {
                            print("Completed: " + pin);
                          }),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const PillButton(text: 'Submit'),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
