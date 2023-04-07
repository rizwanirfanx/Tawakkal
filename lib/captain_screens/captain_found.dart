import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hey_taxi/components/pill_button.dart';
import 'package:hey_taxi/components/trip_card.dart';
import 'package:hey_taxi/constants.dart';
import 'package:latlong2/latlong.dart';

class CaptainFound extends StatefulWidget {
  const CaptainFound({super.key});

  @override
  State<CaptainFound> createState() => _CaptainFoundState();
}

class _CaptainFoundState extends State<CaptainFound> {
  String? selectedRide;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            FlutterMap(
              options: MapOptions(center: LatLng(33.58, 71.44), zoom: 15.0),
              children: [
                Text('Hello'),
                TileLayer(
                  urlTemplate:
                      "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                  subdomains: ["a", "b", "c"],
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: primaryColor,
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
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
                    SizedBox(height: 10),
                    Text(
                      'Your captain Corey is on his way to pick you up',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                foregroundImage: NetworkImage(
                                    'https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes-thumbnail.png'),
                              ),
                              SizedBox(width: 20),
                              Text(
                                'I will be there in 15 seconds',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                    topRight: Radius.circular(0),
                                    bottomRight: Radius.circular(12),
                                  ),
                                ),
                                child: Text('Hello Kinks'),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Divider(),
                          TextFormField(initialValue: 'Type'),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 150,
                          child: PillButton(
                              text: 'Call Captain',
                              buttonColor: Colors.white,
                              textColor: primaryColor),
                        ),
                        SizedBox(width: 20),
                        SizedBox(
                          width: 150,
                          child: PillButton(
                              text: 'Cancel',
                              buttonColor: Colors.white,
                              textColor: primaryColor),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      TripCard(),
                      SizedBox(height: 20),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
