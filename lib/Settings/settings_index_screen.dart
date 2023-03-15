import 'package:flutter/material.dart';
import 'package:hey_taxi/components/navbar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Navbar(title: 'Settings', icon: Icons.arrow_back_sharp),
        ],
      )),
    );
  }
}
