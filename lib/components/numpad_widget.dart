import 'package:flutter/material.dart';

class Numpad extends StatefulWidget {
  const Numpad({super.key});

  @override
  State<Numpad> createState() => _NumpadState();
}

class _NumpadState extends State<Numpad> {
  var values = ['1', '2', '3', '4', '5', '6', '7', '8', '9', ' ', '0'];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(crossAxisCount: 3, children: [
        for (var value in values) Text(value),
      ]),
    );
  }
}

