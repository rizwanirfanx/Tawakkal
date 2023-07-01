import 'package:flutter/material.dart';
import 'package:hey_taxi/components/CustomListItem.dart';
import 'package:hey_taxi/components/navbar.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: 20),
              Navbar(title: 'Personal Info'),
              CustomListItem(text: 'Maria Vaccaro'),
              CustomListItem(text: '+845-341-5093'),
              CustomListItem(text: 'mmira@exmaple.com'),
              CustomListItem(text: 'Change Password'),
            ],
          ),
        ),
      ),
    );
  }
}
