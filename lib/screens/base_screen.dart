import 'package:flutter/material.dart';
import 'package:banking_online/constants/color_constants.dart';
import 'package:banking_online/screens/home_Screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CardScreen(),
    HomeScreen(),
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.creditCard), label: "Cards"),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.cog), label: "Settings"),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.chartBar), label: "Overview")
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
}
