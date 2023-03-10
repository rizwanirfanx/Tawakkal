import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerComponent extends StatefulWidget {
  const BannerComponent(
      {super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;

  @override
  State<BannerComponent> createState() => _BannerComponentState();
}

class _BannerComponentState extends State<BannerComponent> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          decoration: const BoxDecoration(
            color: Color(0xFF205CBe),
            gradient: LinearGradient(
              colors: [
                Color(0xFF1488CC),
                Color(0xFF2B32B2),
              ],
              begin: Alignment.topLeft,
              end: Alignment(1, 1),
            ),
          ),
        ),
        Positioned(
          right: 50,
          left: 50,
          bottom: 80,
          child: Center(
            child: Column(
              children: [
                Text(
                  widget.title,
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(fontSize: 30),
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  widget.subtitle,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 15,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
