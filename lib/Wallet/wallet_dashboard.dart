import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hey_taxi/components/navbar.dart';
import 'package:hey_taxi/constants.dart';

class WalletDasboard extends StatefulWidget {
  const WalletDasboard({super.key});

  @override
  State<WalletDasboard> createState() => _WalletDasboardState();
}

class _WalletDasboardState extends State<WalletDasboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Navbar(title: 'Wallet'),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                width: double.infinity,
                color: primaryColor,
                child: Column(
                  children: [
                    const Text('Available Balance'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
