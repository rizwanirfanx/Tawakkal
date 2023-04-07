import 'package:flutter/material.dart';

class IconLines62088774 extends StatelessWidget {
  IconLines62088774({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemContainer(),
        ItemContainer(),
        ItemContainer(),
      ],
    );
  }
}

class ItemContainer extends StatelessWidget {
  ItemContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 20,
                width: 1,
              ),
              Icon(
                Icons.message,
                color: Colors.grey,
              ),
              Container(
                color: Colors.blue,
                height: 20,
                width: 1,
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('On the way'),
                  Text('01-07-2020'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
