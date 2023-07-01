import 'package:flutter/material.dart';
import 'package:hey_taxi/components/navbar.dart';
import 'package:hey_taxi/components/pill_button.dart';
import 'package:hey_taxi/constants.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Navbar(title: 'Password'),
              SizedBox(height: 30),
              Text(
                'Change Your Password',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Current Password',
                  suffixIcon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'New Password',
                  suffixIcon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  suffixIcon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: PillButton(
                    text: 'Update',
                    buttonColor: primaryColor,
                    textColor: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
