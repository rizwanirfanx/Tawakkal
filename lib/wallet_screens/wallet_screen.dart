import 'package:flutter/material.dart';
import 'package:hey_taxi/components/navbar.dart';
import 'package:hey_taxi/components/vertical_button.dart';
import 'package:hey_taxi/components/wallet_card.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Navbar(title: 'Wallet'),
                    SizedBox(height: 40),
                    WalletCard(),
                    SizedBox(height: 20),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(width: 10),
                        Expanded(
                          child: VerticalButton(
                            iconData: Icons.wallet_rounded,
                            text: 'Add Amount',
                            callback: () {
                              Navigator.pushNamed(context, '/add_amount');
                            },
                          ),
                        ),
                        SizedBox(width: 30),
                        Expanded(
                          child: VerticalButton(
                            text: 'Send Amount',
                            iconData: Icons.telegram,
                            callback: () {
                              Navigator.pushNamed(context, '/add_amount');
                            },
                          ),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                    SizedBox(height: 40),
                    const Text('Payment Methods',
                        style: TextStyle(fontSize: 18)),
                    SizedBox(height: 20),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 4),
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
                          Text('**** **** **** 9793'),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
			      Navigator.pushNamed(context, '/add_card');
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(
                                  0, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Add Card'),
			    
                            Icon(Icons.add),
                          ],
                        ),
                      ),
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
