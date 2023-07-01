import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hey_taxi/components/navbar.dart';
import 'package:hey_taxi/components/pill_button.dart';
import 'package:numpad/numpad.dart';

class EnterAmountScreen extends StatefulWidget {
  const EnterAmountScreen({super.key});

  @override
  State<EnterAmountScreen> createState() => _EnterAmountScreenState();
}

class _EnterAmountScreenState extends State<EnterAmountScreen> {
  String _amount = '0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 20),
              Navbar(title: 'Send Amount'),
              Expanded(
                child: Center(
                  child:
                      Text(_amount, style: TextStyle(fontSize: 70)),
                ),
              ),
              Text('Available Balance USD'),
              SizedBox(height: 20),
              Expanded(
                child: NumPad(
                  onTap: (value) {
                    setState(
                      () {
                        _amount += value.toString();
                      },
                    );
                  },
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: PillButton(text: 'Continue'),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
