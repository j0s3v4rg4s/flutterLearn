import 'package:flutter/material.dart';

import 'home.dart';
import 'profile.dart';
import 'search.dart';

class PlatziTrips extends StatefulWidget {
  const PlatziTrips({Key? key}) : super(key: key);

  @override
  _PlatziTripsState createState() => _PlatziTripsState();
}

class _PlatziTripsState extends State<PlatziTrips> {
  int index = 0;

  final List<Widget> widgets = [
    Home(),
    Search(),
    Profile()
  ];

  void onTapMenu(int _index) {
    setState(() {
      index = _index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
        ),
        child: BottomNavigationBar(
          onTap: onTapMenu,
          currentIndex: index,
          // showSelectedLabels: false,
          // showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
      body: widgets[index],
    );
  }
}
