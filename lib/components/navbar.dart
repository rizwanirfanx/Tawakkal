import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hey_taxi/constants.dart';

class Navbar extends StatelessWidget {
  Navbar({super.key , required this.title, required this.icon});
  late String title;
  late IconData icon;

  @override
  
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(icon, color: primaryColor),
        Text(title, style: GoogleFonts.inter(fontSize: 18, color: primaryColor, fontWeight: FontWeight.w600)),
        Container(),
      ],
    );
  }
}
