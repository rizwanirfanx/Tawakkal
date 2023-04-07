import 'package:flutter/material.dart';
import 'package:hey_taxi/components/trip_card.dart';
import 'package:hey_taxi/constants.dart';

class RateYourCaptain extends StatefulWidget {
  const RateYourCaptain({super.key});

  @override
  State<RateYourCaptain> createState() => _RateYourCaptainState();
}

class _RateYourCaptainState extends State<RateYourCaptain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: primaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TripCard(),
              SizedBox(height: 20),
              Text(
                'Rate Your Captain',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              SizedBox(height: 20),
              CircleAvatar(
                radius: 50,
                foregroundImage: NetworkImage(
                    'https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes-thumbnail.png'),
              ),
              SizedBox(height: 10),
              Text(
                'Corey Schleifer',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Rating 4.8',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 20),
                  Icon(Icons.star, color: Colors.yellow),
                ],
              ),
	      SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Text('NH-6577'),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          width: 2,
                          height: 10,
                          color: Colors.grey,
                        ),
                        Text('Suzuki Swift'),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star_outline, color: Colors.yellow),
                  Icon(Icons.star_outline, color: Colors.yellow),
                  Icon(Icons.star_outline, color: Colors.yellow),
                  Icon(Icons.star_outline, color: Colors.yellow),
                  Icon(Icons.star_outline, color: Colors.yellow),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
