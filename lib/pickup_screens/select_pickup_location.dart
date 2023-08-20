import 'package:flutter/material.dart';
import 'package:hey_taxi/components/navbar.dart';

class SelectPickupLocation extends StatefulWidget {
  const SelectPickupLocation({super.key});

  @override
  State<SelectPickupLocation> createState() => _SelectPickupLocationState();
}

class _SelectPickupLocationState extends State<SelectPickupLocation> {
  List areas = [
    {
      'city': 'New York',
      'locations': ['Brooklyn', 'Manhattan', 'Staten Island'],
    },
  ];

  List searchResult = [
    {
      'city': 'New York',
      'locations': ['Brooklyn', 'Manhattan', 'Staten Island'],
    },
  ];

  void selectedCityChanged(String citySubstring) {
    for (int i = 0; i < areas.length; i++) {
      if (areas[i]['city'].contains(citySubstring)) {
      } else {
        print('No Cities were found');
      }
    }
  }

  void searchedLocationChanged(String locationSubstring) {
    for (int i = 0; i < areas.length; i++) {
      areas[i]['locations'].forEach((location) {
        if (location.toLowerCase().contains(locationSubstring.toLowerCase())) {}
      });
    }
  }

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
              Navbar(title: 'Select Pickup Location'),
              SizedBox(height: 20),
              Text('Search For Location'),
              Text(
                  '(The System will not be able to suggest location because google api has not been integrated yet)'),
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
                  onChanged: (value) {
                    searchedLocationChanged(value.toLowerCase());
                  },
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
									initialValue: 'Islamabad',
                  onChanged: (value) {
                    selectedCityChanged(value.toLowerCase());
                  },
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  children: const [
                    ListTile(
                      tileColor: Colors.white54,
                      title: Text('G 6/3 Street 88'),
                      subtitle: Text('Islamabad'),
                    ),
                    ListTile(
                      tileColor: Colors.white54,
                      title: Text('G 6/2 Street 87'),
                      subtitle: Text('Islamabad'),
                    ),
                    ListTile(
                      tileColor: Colors.white54,
                      title: Text('G 6/4 Street 99'),
                      subtitle: Text('Islamabad'),
                    ),
                    ListTile(
                      tileColor: Colors.white54,
                      title: Text('Giga Mall'),
                      subtitle: Text('Islamabad'),
                    ),
                    ListTile(
                      tileColor: Colors.white54,
                      title: Text('Melody Market '),
                      subtitle: Text('Islamabad'),
                    ),
                    ListTile(
                      tileColor: Colors.white54,
                      title: Text('Transworld Office'),
                      subtitle: Text('Islamabad'),
                    ),
                    ListTile(
                      tileColor: Colors.white54,
                      title: Text('Ufone Tower'),
                      subtitle: Text('Islamabad'),
                    ),
                    ListTile(
                      tileColor: Colors.white54,
                      title: Text('Centaurus'),
                      subtitle: Text('Islamabad'),
                    ),
                    ListTile(
                      tileColor: Colors.white54,
                      title: Text('Gulberg Greens, F 7 Markaz'),
                      subtitle: Text('Islamabad'),
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
