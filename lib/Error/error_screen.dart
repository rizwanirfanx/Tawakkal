import 'package:flutter/material.dart';
import 'package:hey_taxi/components/pill_button.dart';
import 'package:hey_taxi/constants.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          color: primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                width: 200,
                image:
                    AssetImage('assets/images/connection_lost_transparent.png'),
              ),
              const Text(
                'Connection Lost',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(height: 20),
              const Text(
                'Seems like you are not connected to the internet. Check your connection and try again',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
	      SizedBox(height: 30),
              Container(
                width: double.infinity,
                child: PillButton(
                    text: 'Try Again',
                    buttonColor: Colors.white,
                    textColor: primaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
