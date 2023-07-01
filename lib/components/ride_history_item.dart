import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:hey_taxi/constants.dart';
import 'package:latlong2/latlong.dart';

class RideHistoryItem extends StatelessWidget {
  const RideHistoryItem({super.key, required this.rideDetails});
  final Map rideDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(rideDetails["ride_time"]),
              Text(rideDetails["ride_cost"]),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Icon(Icons.location_pin, color: primaryColor, size: 18),
              Text(
                rideDetails["source_location"],
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.location_pin, color: primaryColor, size: 18),
              Text(
                rideDetails["destination_location"],
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 10),
          ExpansionTile(
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            title: const Text('Details'),
            trailing: const Icon(Icons.chevron_left),
            children: [
              Row(
                children: [
                  CircleAvatar(
                    foregroundImage: AssetImage('assets/images/ganjay.webp'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            rideDetails["driver_name"],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5),
                          for (int i = 0; i < 5; i++)
                            Icon(Icons.star, size: 14, color: Colors.orange),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('S 6025'),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 10,
                            width: 1,
                            color: Colors.grey,
                          ),
                          Text('Honda CD 70'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text('You travelled 20km in 60mins', textAlign: TextAlign.start),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Service fee'),
                  Text('\$20.00'),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Waiting Fee'),
                  Text('\$8.00'),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('1.5 peak Factor'),
                  Text('\$13.00'),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Ride Charges'),
                  Text('\$37.02'),
                ],
              ),
              SizedBox(height: 5),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Fare'),
                  Text(rideDetails["total_fare"]),
                ],
              ),
              SizedBox(height: 5),
              SizedBox(
                width: double.infinity,
                height: 200,
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
            ],
          ),
        ],
      ),
    );
  }
}
