import 'package:flutter/material.dart';

class FAQItem extends StatelessWidget {
  const FAQItem({super.key, required this.question, required this.answer});
  final String question;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.black12,
      ),
      child: ExpansionTile(
        title: Text(question),
        children: <Widget>[
          ListTile(
            title: Text(answer),
          ),
        ],
      ),
    );
  }
}
