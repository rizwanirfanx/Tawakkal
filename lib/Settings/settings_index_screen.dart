import 'package:flutter/material.dart';
import 'package:hey_taxi/components/CustomListItem.dart';
import 'package:hey_taxi/components/navbar.dart';
import 'package:hey_taxi/components/pill_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Colors.black54;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: 20),
              Navbar(title: 'Settings', icon: Icons.arrow_back_sharp),
              SizedBox(height: 20),
              CustomListItem(
                text: 'Personal Info',
                icon: Icon(Icons.person, color: primaryColor),
              ),
              CustomListItem(
                text: 'Language',
                icon: Icon(Icons.language_rounded, color: primaryColor),
              ),
              CustomListItem(
                text: 'Rate This App',
                icon: Icon(Icons.star_outline, color: primaryColor),
              ),
              CustomListItem(
                text: 'Terms & Conditions',
                icon: Icon(Icons.document_scanner_rounded, color: primaryColor),
              ),
              CustomListItem(
                text: 'Privacy Policy',
                icon: Icon(Icons.lock_outlined, color: primaryColor),
              ),
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                child: PillButton(
                    buttonColor: Color(0xFF205CBe),
                    text: 'Logout',
                    textColor: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
