import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hey_taxi/components/drawer.dart';
import 'package:hey_taxi/components/menu_button.dart';
import 'package:hey_taxi/components/pill_button.dart';
import 'package:hey_taxi/constants.dart';
import 'package:latlong2/latlong.dart';

class DropoffScreen extends StatefulWidget {
  const DropoffScreen({super.key});

  @override
  State<DropoffScreen> createState() => _DropoffScreenState();
}

class _DropoffScreenState extends State<DropoffScreen> {
  String? selectedRide;
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    return Scaffold(
      drawer: const TDrawer(),
      key: _key,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            FlutterMap(
              options: MapOptions(center: LatLng(33.58, 71.44), zoom: 15.0),
              children: [
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
                      Text('Select Dropoff Location'),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          MenuButton(callback: () {
                            _key.currentState!.openDrawer();
                          }),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              margin: const EdgeInsets.all(30),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text('Street 49, Park Slope'),
                                              Text(
                                                'New York',
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            color: primaryColor,
                                            height: 30,
                                            width: 1,
                                          ),
                                          Icon(
                                            Icons.location_pin,
                                            color: primaryColor,
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.all(8),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(context,
                                                      '/select_dropoff_location');
                                                },
                                                child: Text(
                                                  'Where do you want to go',
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: primaryColor,
                        ),
                        child: Text(
                          'Search for a drop off location, or \ndrag the map',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                          ),
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
                        hint: Row(
                          children: [
														Image.asset('assets/images/car-removebg-preview.png'),
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
                            value: 'Go 5 Mins Away',
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: const <Widget>[
                                  Icon(Icons.train_outlined),
                                  SizedBox(width: 10),
                                  Text('Go 5 Mins Away'),
                                ],
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'Go 6 Mins Away',
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: const <Widget>[
                                  Icon(Icons.mp),
                                  SizedBox(width: 10),
                                  Text('Go 6 Mins Away'),
                                ],
                              ),
                            ),
                          ),
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
                              callback: () {
                                Navigator.pushNamed(context, '/captain_found');
                              },
                              text: 'Add Dropoff',
                              buttonColor: Colors.white,
                              textColor: primaryColor),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          width: 150,
                          child: PillButton(
                              text: 'Skip',
                              buttonColor: Colors.white,
                              textColor: primaryColor),
                        ),
                      ],
                    ),
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
