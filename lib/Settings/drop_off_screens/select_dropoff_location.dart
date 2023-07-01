import 'package:flutter/material.dart';
import 'package:hey_taxi/components/navbar.dart';

class SelectDropOffLocation extends StatefulWidget {
  const SelectDropOffLocation({super.key});

  @override
  State<SelectDropOffLocation> createState() => _SelectDropOffLocationState();
}

class _SelectDropOffLocationState extends State<SelectDropOffLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Navbar(title: 'Select Dropoff Location'),
              SizedBox(height: 20),
              Text('Search For Location'),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Icon(Icons.favorite_outline),
                Icon(Icons.home_outlined),
                Icon(Icons.business_outlined),
              ]),
              SizedBox(height: 30),
              Text('Select City'),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}