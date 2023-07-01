import 'package:flutter/material.dart';
import 'package:hey_taxi/components/navbar.dart';
import 'package:hey_taxi/constants.dart';

class CardVerificationScreen extends StatelessWidget {
  const CardVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Navbar(title: 'Add Card'),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.credit_card, color: primaryColor, size: 40),
                      SizedBox(height: 15),
                      Text(
                        'Verifying Your Card',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 15),
                      const Text(
                        'Small Amount will be charged from your card while verification. The amount wil be automatically refunded after verification',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
		      mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20, right: 10),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20, right: 10),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20, right: 10),
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20, right: 10),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20, right: 10),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
