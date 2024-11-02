import 'package:flutter/material.dart';
import 'profile.dart';

import 'home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;
  static const List<Widget> widgetOptions = <Widget>[
    MyHome(),
    Profile(),
  ];

  void _onTaped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onTaped,
      ),
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
    );
  }
}
