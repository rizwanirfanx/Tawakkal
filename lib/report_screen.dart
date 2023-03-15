import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hey_taxi/components/CustomListItem.dart';
import 'package:hey_taxi/components/navbar.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Navbar(title: 'Report', icon: Icons.arrow_back_sharp),
              SizedBox(height: 20),
              CustomListItem(),
              CustomListItem(),
              CustomListItem(),
              CustomListItem(),
            ],
          ),
        ),
      ),
    );
  }
}
