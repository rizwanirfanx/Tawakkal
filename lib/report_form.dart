import 'package:flutter/material.dart';
import 'package:hey_taxi/components/navbar.dart';
import 'package:hey_taxi/components/pill_button.dart';
import 'package:hey_taxi/constants.dart';

class ReportForm extends StatelessWidget {
  const ReportForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Navbar(title: 'Report'),
              SizedBox(height: 30),
              Text(
                'I did\'t feel safe in this ride',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 30),
              TextField(
                decoration:
                    InputDecoration(hintText: 'Write more about this problem'),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: PillButton(
                    text: 'Submit',
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
