import 'package:flutter/material.dart';
import 'package:hey_taxi/components/CustomListItem.dart';
import 'package:hey_taxi/components/pill_button.dart';
import 'package:hey_taxi/constants.dart';

class TDrawer extends StatelessWidget {
  const TDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> drawerItems = [
      {
        "icon_name": Icons.home,
        'drawer_item_title': 'Home',
        'link': '/dashboard'
      },
      {
        "icon_name": Icons.star_outlined,
        'drawer_item_title': 'Rewards',
        'points': '3150 Points',
        'link': '/rewards'
      },
      {
        "icon_name": Icons.history,
        'drawer_item_title': 'Previous Rides',
        'link': '/rides_history'
      },
      {
        "icon_name": Icons.phone_rounded,
        'drawer_item_title': 'Current Package',
        'link': '/current_package'
      },
      {
        "icon_name": Icons.speaker_outlined,
        'drawer_item_title': 'Promotions',
        'link': '/promotions'
      },
      {
        "icon_name": Icons.wallet,
        'drawer_item_title': 'Tawakkal Wallet',
        'link': '/wallet_screen'
      },
      {
        "icon_name": Icons.settings,
        'drawer_item_title': 'Settings',
        'link': '/settings'
      },
    ];
    return Drawer(
      child: ColoredBox(
        color: primaryColor,
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(color: primaryColor),
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.only(top: 20),
            child: Column(
							crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      foregroundImage: AssetImage('assets/images/ganjay.webp'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Saira Hameed',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Rating 4.8',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Divider(color: Colors.white),
                const SizedBox(height: 20),
                for (var drawerItem in drawerItems)
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, drawerItem['link']);
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(drawerItem['icon_name'], color: Colors.white),
                          SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                drawerItem['drawer_item_title'],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                drawerItem['points'] ?? '',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                SizedBox(
                  height: 40,
                ),
                PillButton(
                  text: 'Become a Captain',
                  buttonColor: Colors.white,
                  textColor: primaryColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
