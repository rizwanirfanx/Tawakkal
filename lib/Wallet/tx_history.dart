import 'package:flutter/material.dart';
import 'package:hey_taxi/components/navbar.dart';

class TXHistory extends StatelessWidget {
  const TXHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Navbar(
                title: 'Wallet',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
