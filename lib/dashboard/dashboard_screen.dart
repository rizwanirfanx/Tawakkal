import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hey_taxi/components/drawer.dart';
import 'package:hey_taxi/components/menu_button.dart';
import 'package:hey_taxi/components/pill_button.dart';
import 'package:hey_taxi/constants.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    return Scaffold(
      drawer: const TDrawer(),
      key: _key,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                color: primaryColor,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MenuButton(callback: () {
                          _key.currentState!.openDrawer();
                        }),
                        Image.asset('assets/images/Tawakkal-logo.png',
                            width: 200),
                        const Icon(Icons.notifications_outlined,
                            color: Colors.white),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.money),
                              SizedBox(width: 5),
                              Text('My Rewards'),
                            ],
                          ),
                          SizedBox(height: 10),
                          const Text(
                            'Current Balance',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                        context,
                                        '/tx_history',
                                      );
                                    },
                                    child: Row(
                                      children: const [
                                        Text(
                                          '\$ 928.0',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 24),
                                        ),
                                        Icon(Icons.chevron_right),
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    'Updated Just Now',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                              PillButton(
                                text: 'Add Cash',
                                callback: () {
                                  Navigator.pushNamed(
                                      context, '/wallet_screen');
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color.fromARGB(255, 220, 220, 221),
                        ),
                        margin: EdgeInsets.all(5),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/uber-shield-blog_white-removebg-preview.png',
                              height: 100,
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Become a Pilot',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 5),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.black,
                              ),
                              child: Icon(Icons.chevron_right_rounded,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/pickup_screen_main');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color.fromARGB(255, 220, 220, 221),
                          ),
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/car-removebg-preview.png',
                                height: 100,
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Get A Ride',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              SizedBox(height: 5),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.black,
                                ),
                                child: Icon(Icons.chevron_right_rounded,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Container(
									margin: EdgeInsets.symmetric(horizontal: 20),
                  child: FlutterMap(
                    options: MapOptions(
                      center: LatLng(51.509364, -0.128928),
                      zoom: 9.2,
                    ),
                    nonRotatedChildren: [
                      AttributionWidget.defaultWidget(
                        source: 'OpenStreetMap contributors',
                        onSourceTapped: null,
                      ),
                    ],
                    children: [
                      TileLayer(
                        urlTemplate:
                            'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                        userAgentPackageName: 'com.example.app',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
