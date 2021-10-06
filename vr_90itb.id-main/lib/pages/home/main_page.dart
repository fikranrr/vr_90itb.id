import 'package:flutter/material.dart';
import 'package:vr_90itb_id/pages/home/home_page.dart';
import 'package:vr_90itb_id/pages/home/profile_page.dart';
import 'package:vr_90itb_id/theme/theme.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Center(
      child: Text('New Page'),
    ),
    Center(
      child: Text('Map Page'),
    ),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: backgroundColor3,
        selectedItemColor: primaryColor,
        unselectedItemColor: secondaryColor,
        selectedLabelStyle: primaryTextStyle.copyWith(
          fontSize: 12,
          fontWeight: bold,
        ),
        unselectedLabelStyle: secondaryTextStyle.copyWith(
          fontSize: 12,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Container(
              child: Image.asset(
                'assets/ic_home.png',
                height: 24,
                color: _selectedIndex == 0 ? primaryColor : secondaryColor,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
              child: Image.asset(
                'assets/ic_new.png',
                height: 24,
                color: _selectedIndex == 1 ? primaryColor : secondaryColor,
              ),
            ),
            label: 'New',
          ),
          BottomNavigationBarItem(
            icon: Container(
              child: Image.asset(
                'assets/ic_map.png',
                height: 24,
                color: _selectedIndex == 2 ? primaryColor : secondaryColor,
              ),
            ),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Container(
              child: Image.asset(
                'assets/ic_profile.png',
                height: 24,
                color: _selectedIndex == 3 ? primaryColor : secondaryColor,
              ),
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
