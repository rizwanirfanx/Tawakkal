import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hey_taxi/components/navbar.dart';

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
            children: [Navbar(title: 'Wallet')],
          ),
        ),
      ),
    );
  }
}
