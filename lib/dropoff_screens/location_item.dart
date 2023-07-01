import 'package:flutter/material.dart';
import 'package:hey_taxi/constants.dart';

class LocationItem extends StatelessWidget {
  const LocationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.location_pin,
              color: primaryColor,
            ),
            Container(
              color: primaryColor,
              height: 20,
              width: 1,
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Street 49, Park Slope'),
                Text(
                  'New York',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
