import 'package:flutter/material.dart';
import 'package:hey_taxi/Repositories/wallet_repo.dart';
import 'package:localstorage/localstorage.dart';

class WalletCard extends StatefulWidget {
  const WalletCard({super.key});

  @override
  State<WalletCard> createState() => _WalletCardState();
}

class _WalletCardState extends State<WalletCard> {
  late Future<double> walletAmount;
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return displayWalletCard();
  }
}

Widget displayWalletCard({dynamic snapshot}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomRight,
        colors: <Color>[
          Color.fromARGB(255, 35, 76, 184),
          Color.fromARGB(255, 22, 123, 198),
        ],
      ),
    ),
    child: Column(
      children: [
        const Text(
          'Available Balance',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'USD',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            SizedBox(width: 5),
            Text(
              '200',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget ErrorCard() {
  return Text('Couldnt Fetch Data');
}
