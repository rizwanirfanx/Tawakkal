import 'package:flutter/material.dart';
import 'package:hey_taxi/components/navbar.dart';
import 'package:hey_taxi/components/pill_button.dart';
import 'package:hey_taxi/constants.dart';

class ChangeValue extends StatelessWidget {
  const ChangeValue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Navbar(title: 'Name'),
              SizedBox(height: 30),
              Text(
                'Update your name',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 30),
              TextField(
                decoration:
                    InputDecoration(hintText: 'Mira Vaccaro'),
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
