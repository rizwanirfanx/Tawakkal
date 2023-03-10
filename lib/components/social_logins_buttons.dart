import 'package:flutter/material.dart';

class SocialLoginsButtons extends StatefulWidget {
  const SocialLoginsButtons({super.key});

  @override
  State<SocialLoginsButtons> createState() => _SocialLoginsButtonsState();
}

class _SocialLoginsButtonsState extends State<SocialLoginsButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.all(10),
          child: CircleAvatar(
            child: Icon(Icons.facebook),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Image.asset('assets/images/google.png', height: 30),
          ),
        ),
      ],
    );
  }
}
