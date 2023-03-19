import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hey_taxi/constants.dart';

class Navbar extends StatelessWidget {
  Navbar({super.key, required this.title, this.icon = Icons.arrow_back_sharp});
  late String title;
  late IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(icon, color: primaryColor),
        ),
        Text(title,
            style: GoogleFonts.inter(
                fontSize: 18,
                color: primaryColor,
                fontWeight: FontWeight.w600)),
        Container(),
      ],
    );
  }
}
