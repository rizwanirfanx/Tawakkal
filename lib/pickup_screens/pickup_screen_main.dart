import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hey_taxi/components/drawer.dart';
import 'package:hey_taxi/components/menu_button.dart';
import 'package:hey_taxi/components/pill_button.dart';
import 'package:hey_taxi/constants.dart';
import 'package:latlong2/latlong.dart';

class PickupScreen extends StatefulWidget {
  const PickupScreen({super.key});

  @override
  State<PickupScreen> createState() => _PickupScreenState();
}

class _PickupScreenState extends State<PickupScreen> {
  String? selectedRide;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: TDrawer(),
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
                      const SizedBox(height: 30),
                      const Text(
                        'Select a Pickup Location',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          MenuButton(callback: () {
                            _key.currentState!.openDrawer();
                          }),
                          Expanded(
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_pin,
                                    color: primaryColor,
                                  ),
                                  const SizedBox(
                                      width:
                                          10), // Add some spacing between the icon and the text field
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, '/select_pickup_location');
                                      },
                                      child:
                                          const Text('Select Pickup Location'),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.favorite_outline,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
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
                            Image.asset(
                                'assets/images/car-removebg-preview.png'),
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
                                children: <Widget>[
                                  Image.asset(
                                      'assets/images/car-removebg-preview.png'),
                                  const SizedBox(width: 10),
                                  const Text('Go 5 Mins Away'),
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
                                children: <Widget>[
                                  Image.asset(
                                      'assets/images/car-removebg-preview.png'),
                                  const SizedBox(width: 10),
                                  const Text('Go 6 Mins Away'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    PillButton(
                      text: 'Confirm Pickup',
                      buttonColor: Colors.white,
                      textColor: primaryColor,
                      callback: () => {
                        Navigator.pushNamed(context, '/dropoff_screen'),
                      },
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
