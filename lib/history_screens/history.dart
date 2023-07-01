import 'package:flutter/material.dart';
import 'package:hey_taxi/components/ride_history_item.dart';
import 'package:hey_taxi/components/navbar.dart';
import 'package:hey_taxi/components/upper_rounded_button.dart';
import 'package:hey_taxi/constants.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> rideHistory = [
      {
        "ride_time": "Monday 6:47 PM",
        "ride_cost": "\$79",
        "source_location": "Street 49, Park Slope, New York",
        "destination_location": "276, Bay Ride, New York",
        "driver_name": "Emmad Ud Din",
        "driver_car_number": "S 6025",
        "driver_car": "CD 70",
        "services_charges": "\$20.00",
        "waiting_fees": "\$8.00",
        "1.5_peak_factor": "\$13.00",
        "driver_charges": "\$37.00",
        "total_fare": "\$77.00",
      },
      {
        "ride_time": "Tuesday 8:47 PM",
        "ride_cost": "\$100",
        "source_location": "Zamaan Park, Peshawar",
        "destination_location": "Minaar-e-Pakistan, Lahore",
        "driver_name": "Khan Baba",
        "driver_car_number": "GHRB",
        "driver_car": "Mercedes",
        "services_charges": "\$10.00",
        "waiting_fees": "\$09.00",
        "1.5_peak_factor": "\$38.00",
        "driver_charges": "\$81.00",
        "total_fare": "\$100.00",
      }
    ];
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Navbar(title: 'Previous Rides'),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: UpperRoundedButton(
                        text: 'Upcoming',color: Colors.transparent, textColor: primaryColor),
                  ),
                  Expanded(
                    child: UpperRoundedButton(
                        text: 'History',
                        color: primaryColor,
                         ),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  children: [
                    for (var i in rideHistory) RideHistoryItem(rideDetails: i),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
