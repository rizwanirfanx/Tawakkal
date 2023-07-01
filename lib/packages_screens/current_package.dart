import 'package:flutter/material.dart';
import 'package:hey_taxi/components/Link.dart';
import 'package:hey_taxi/components/bullet_list_item.dart';
import 'package:hey_taxi/components/navbar.dart';
import 'package:hey_taxi/components/pill_button.dart';
import 'package:hey_taxi/constants.dart';

class CurrentPackageScreen extends StatelessWidget {
  const CurrentPackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color greyColor = Color.fromARGB(255, 244, 244, 245);
    const Color darkerGrey = Color.fromARGB(255, 188, 188, 188);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Navbar(title: 'Packages'),
              const SizedBox(height: 30),
              const Text(
                'Current Package',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: greyColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '6 Rides',
                            style: TextStyle(color: primaryColor, fontSize: 20),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              for (int i = 0; i < 6; i++)
                                Expanded(
                                  child: Container(
                                    height: 2,
                                    color: primaryColor,
                                    margin: const EdgeInsets.only(right: 4),
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            '4 Rides Left',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 20),
                          const Text(
                            'Expires on 25 May 2023',
                          ),
                          const SizedBox(height: 30),
                          const Text(
                            'Save up to 30%',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          const Text(
                            'Get USD 35 off each ride',
                          ),
                          SizedBox(height: 10),
                          const Text(
                            'USD 30',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 40),
                          Text(
                            'Terms & Conditions',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const BulletListItem(
                              bulletListItemText: 'Valid for 60 Days'),
                          const BulletListItem(
                              bulletListItemText: 'Only for New York City'),
                          const BulletListItem(
                              bulletListItemText: 'Valid on Limited Car Types'),
                          const SizedBox(height: 10),
                          Link(
                              routeName: '/',
                              text: 'View all terms & Conditions'),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        color: darkerGrey,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      width: double.infinity,
                      child: Text('Valid only for 60 days'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: PillButton(
                    buttonColor: primaryColor,
                    text: 'Buy Another Package',
		    callback: (){
			    Navigator.pushNamed(context, '/packages');
		    },
                    textColor: Colors.white),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
