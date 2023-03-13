import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hey_taxi/constants.dart';

class Link extends StatefulWidget {
  Link({super.key, required this.routeName, required this.text});
  late String routeName;
  late String text;

  @override
  State<Link> createState() => _LinkState();
}

class _LinkState extends State<Link> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.pushNamed(context, widget.routeName),
      },
      child: Text(
        widget.text,
        style: GoogleFonts.inter(
          color: primaryColor,
	  fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
