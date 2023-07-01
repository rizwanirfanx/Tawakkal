import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LocationItemInput extends StatelessWidget {
  const LocationItemInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        children: [
          Icon(Icons.location_pin),
          SizedBox(
              width:
                  10), // Add some spacing between the icon and the text field
          Expanded(
            child: TextField(
              decoration: InputDecoration(hintText: 'Enter text here'),
            ),
          ),
          Icon(Icons.favorite_outline),
        ],
      ),
    );
  }
}
