import 'package:bankpick/pages/cards_page.dart';
import 'package:bankpick/pages/home_page.dart';
import 'package:bankpick/pages/profile_page.dart';
import 'package:bankpick/pages/settings_page.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => NavigationPageState();
}

class NavigationPageState extends State<NavigationPage> {
  int myIndex = 0;

  List<Widget> widgetList = [
    HomePage(),
    CardsPage(),
    SettingsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    // Determine if we need to show the BottomNavigationBar or not
    Widget? bottomNavBar;

    if (myIndex == 3) {
      bottomNavBar = null;
    } else {
      bottomNavBar = BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_outlined),
            label: 'Cards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: widgetList[myIndex],
      ),
      bottomNavigationBar: bottomNavBar,
    );
  }
}
