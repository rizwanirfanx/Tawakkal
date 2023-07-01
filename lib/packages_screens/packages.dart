import 'package:flutter/material.dart';
import 'package:hey_taxi/Models/PackageDetail.dart';
import 'package:hey_taxi/components/navbar.dart';
import 'package:hey_taxi/components/pill_button.dart';
import 'package:hey_taxi/constants.dart';
import 'package:hey_taxi/packages_screens/manage_payment.dart';

class PackagesScreen extends StatefulWidget {
  const PackagesScreen({super.key});

  @override
  State<PackagesScreen> createState() => _PackagesScreenState();
}

class _PackagesScreenState extends State<PackagesScreen> {
  int selectedItem = 1;
  var packages = [
    PackageDetail('6 Rides', 'Save upto 30%', '60 Days', 'USD 300'),
    PackageDetail('3 Rides', 'Save upto 15%', '30 Days', 'USD 150'),
    PackageDetail('10 Rides', 'Save upto 40%', '90 Days', 'USD 500'),
  ];
  Color greyColor = const Color.fromARGB(255, 244, 244, 245);
  Color darkerGrey = const Color.fromARGB(255, 188, 188, 188);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Navbar(title: 'Packages'),
              SizedBox(height: 30),
              const Text(
                'Select a package that works for you and save on your daily rides',
                style: TextStyle(
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: PillButton(
                        buttonColor:
                            selectedItem == 1 ? primaryColor : Colors.white,
                        textColor:
                            selectedItem == 1 ? Colors.white : Colors.black45,
                        text: '3 Rides',
                        buttonBorderRadius: 12,
                        callback: () {
                          setState(
                            () {
                              selectedItem = 1;
                            },
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: PillButton(
                        text: '6 Rides',
                        textColor: Colors.black45,
                        buttonColor: Colors.white,
                        buttonBorderRadius: 12,
                        callback: () {
                          setState(() {
                            selectedItem = 0;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: PillButton(
                          text: '10 Rides',
                          textColor: Colors.black45,
                          buttonColor: Colors.white,
                          buttonBorderRadius: 12,
                          callback: () {
                            setState(() {
                              selectedItem = 2;
                            });
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: greyColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            packages[selectedItem].title,
                            style: TextStyle(color: primaryColor, fontSize: 30),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            packages[selectedItem].subtitle,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            packages[selectedItem].price,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            width: 100,
                            child: PillButton(
                                text: 'Buy',
                                callback: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ManagePaymentScreen(
                                                  packageDetail:
                                                      packages[selectedItem])));
                                }),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: darkerGrey,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      width: double.infinity,
                      child: Text(
                          'Valid only for ${packages[selectedItem].validity}'),
                    ),
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
