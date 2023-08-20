import 'package:flutter/material.dart';
import 'package:hey_taxi/components/navbar.dart';
import 'package:hey_taxi/components/pill_button.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Navbar(title: 'Add Card'),
              SizedBox(
                height: 40,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: const [
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Card Number',
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Card Holder Name',
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                            hintText: 'Expiry Date (mm/yyyy)',
                            suffix: Icon(Icons.question_mark)),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: 'CVC', suffix: Icon(Icons.question_mark)),
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        width: double.infinity,
                        child: PillButton(
                            text: 'Add Card', buttonColor: Colors.grey),
                      ),
                      SizedBox(height: 20),
                      Text(
                          'Small Amount will be cahrged from your card while verification. The amount will be automatically refunded after verification',
                          style: TextStyle(color: Colors.black38),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
              const Icon(Icons.lock_outline, color: Colors.black38),
              SizedBox(height: 10),
              const Text('All your information is safe and secured',
                  style: TextStyle(color: Colors.black38),
                  textAlign: TextAlign.center),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
