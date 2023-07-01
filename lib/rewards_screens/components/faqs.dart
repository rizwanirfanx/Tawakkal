import 'package:flutter/material.dart';
import 'package:hey_taxi/rewards_screens/components/faq_item.dart';

class FAQs extends StatelessWidget {
  const FAQs({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map> faqs = [
      {
        "question": "How do I earn Platium Status?",
        "answer":
            "Complete 20 rides a month to reach Platinum status and get 70% more points and other special benefits",
      },
      {
        "question": "How do i maintain Platinum Status",
        "answer":
            "Complete 20 rides a month to reach Platinum status and get 70% more points and other special benefits",
      },
      {
        "question": "Are my Platium benefits applicable in other countries",
        "answer":
            "Complete 20 rides a month to reach Platinum status and get 70% more points and other special benefits",
      },
    ];

    return Column(children: [
      for (var faq in faqs)
        FAQItem(
          question: faq["question"],
          answer: faq["answer"],
        ),
    ]);
  }
}
