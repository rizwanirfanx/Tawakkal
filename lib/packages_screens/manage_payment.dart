import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hey_taxi/Models/PackageDetail.dart';
import 'package:hey_taxi/components/CustomListItem.dart';
import 'package:hey_taxi/components/navbar.dart';
import 'package:hey_taxi/components/pill_button.dart';
import 'package:hey_taxi/constants.dart';

class ManagePaymentScreen extends StatelessWidget {
  const ManagePaymentScreen({super.key, required this.packageDetail});
  final PackageDetail packageDetail;

  void showManagePaymentModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Color.fromARGB(255, 35, 76, 184),
                Color.fromARGB(255, 22, 123, 198),
              ],
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Manage Payments',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Icon(Icons.cancel_rounded, color: Colors.white),
                ],
              ),
              const SizedBox(height: 20),
              CustomListItem(
                callback: () {
                  Navigator.pushNamed(context, '/add_card');
                },
                middleContent: Text(
                  'Add New Card',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                icon: Icon(Icons.add, color: Colors.white),
                suffixWidget: Icon(Icons.chevron_right, color: Colors.white),
              ),
              CustomListItem(
                callback: () {
                  Navigator.pushNamed(context, '/wallet_screen');
                },
                middleContent: const Text(
                  'Add Amount',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                icon: Icon(Icons.money_rounded, color: Colors.white),
                suffixWidget: Icon(Icons.chevron_right, color: Colors.white),
		
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Color greyColor = const Color.fromARGB(255, 244, 244, 245);
    Color darkerGrey = const Color.fromARGB(255, 188, 188, 188);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Navbar(title: 'Payment Details'),
              SizedBox(height: 30),
              Text('Payment Details'),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () => showManagePaymentModal(context),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Image.asset(
                            'assets/images/Mastercard-Logo.wine (1).png',
                            width: 50),
                        Text('Credit Card'),
                      ]),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.airplane_ticket_outlined),
                        SizedBox(width: 15),
                        Text('Promo Code'),
                      ],
                    ),
                    Icon(Icons.chevron_right),
                  ],
                ),
              ),
              const SizedBox(height: 40),
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
                            packageDetail.title,
                            style: TextStyle(color: primaryColor, fontSize: 30),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            packageDetail.subtitle,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            packageDetail.price,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 30),
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
                      child: Text('Valid only for ${packageDetail.validity}'),
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
