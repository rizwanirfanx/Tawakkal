import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hey_taxi/components/CustomListItem.dart';
import 'package:hey_taxi/components/navbar.dart';
import 'package:hey_taxi/components/wallet_card.dart';
import 'package:hey_taxi/constants.dart';

class AddAmountScreen extends StatefulWidget {
  const AddAmountScreen({super.key});

  @override
  State<AddAmountScreen> createState() => _AddAmountScreenState();
}

class _AddAmountScreenState extends State<AddAmountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Navbar(title: 'Add Amount'),
              SizedBox(height: 20),
              WalletCard(),
              SizedBox(height: 20),
              Text(
                'Choose Amount',
                style: TextStyle(color: Colors.black45),
              ),
              CustomListItem(
                text: 'USD 10',
              ),
              CustomListItem(text: 'USD 20'),
              CustomListItem(text: 'USD 50'),
              CustomListItem(text: 'USD 100'),
              CustomListItem(
                  text: 'Enter New Amount',
                  callback: () {
                    Navigator.pushNamed(context, '/enter_amount');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
