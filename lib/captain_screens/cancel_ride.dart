import 'package:flutter/material.dart';
import 'package:hey_taxi/components/navbar.dart';
import 'package:hey_taxi/components/pill_button.dart';

class CancelRide extends StatefulWidget {
  const CancelRide({super.key});

  @override
  State<CancelRide> createState() => _CancelRideState();
}

class _CancelRideState extends State<CancelRide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20),
              Navbar(title: 'Cancel Ride'),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: DropdownButton(
			value: 'Changed My Mind',
                  borderRadius: BorderRadius.circular(20),
                  isExpanded: true,
                  underline: Container(),
                  onChanged: (value) {},
                  items: const [
                    DropdownMenuItem(
                      value: 'Changed My Mind',
                      child: Text('Changed My Mind'),
                    ),
                    DropdownMenuItem(
                      value: 'Captain is not coming',
                      child: Text('Captain is not coming'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: PillButton(text: 'Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
