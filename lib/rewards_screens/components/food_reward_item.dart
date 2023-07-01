import 'package:flutter/material.dart';

class FoodRewardItem extends StatelessWidget {
  const FoodRewardItem(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.points});
  final String imageUrl;
  final String title;
  final String points;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            width: 150,
            height: 120,
            child: Card(
              child: Image.network(imageUrl, fit: BoxFit.fill),
              clipBehavior: Clip.antiAlias,
            ),
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
	  SizedBox(height: 4),
          Text(
            points,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
