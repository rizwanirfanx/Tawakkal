import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hey_taxi/components/navbar.dart';
import 'package:hey_taxi/components/pill_button.dart';
import 'package:hey_taxi/constants.dart';
import 'package:latlong2/latlong.dart';

class ChooseRideType extends StatefulWidget {
  const ChooseRideType({super.key});

  @override
  State<ChooseRideType> createState() => _ChooseRideTypeState();
}

class _ChooseRideTypeState extends State<ChooseRideType> {
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
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Text('Select Ride Type'),
                      SizedBox(height: 20),
                      Container(
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
                                decoration: InputDecoration(
                                    hintText: 'Enter text here'),
                              ),
                            ),
                            Icon(Icons.favorite_outline),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
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
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                              width: 1,
                              style: BorderStyle.solid,
                              color: Colors.white)),
                      child: DropdownButton(
                        borderRadius: BorderRadius.circular(20),
                        hint: Row(
                          children: [
                            Icon(Icons.car_crash, color: Colors.white),
                            SizedBox(width: 20),
                            Text(
                              selectedRide != null
                                  ? selectedRide!
                                  : 'Go 5 Mins Away',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        isExpanded: true,
                        underline: Container(),
                        onChanged: (String? value) {
                          setState(() {
                            selectedRide = value;
                          });
                        },
                        items: [
                          DropdownMenuItem(
                            value: 'GO',
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.pedal_bike_outlined),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('GO'),
                                    Text(
                                      'Economical car to go around',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'GO',
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.electric_bike_outlined),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('GO+'),
                                    Text(
                                      'Business Class Ride for Comfort',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: ElevatedButton(
                        onPressed: () => {},
                        child: Text('Add Dropoff'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: primaryColor,
                          backgroundColor: Colors.white,
                          minimumSize: Size.fromHeight(40),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
