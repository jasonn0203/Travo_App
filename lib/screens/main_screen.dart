import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:travo_app/core/color.dart';
import 'package:travo_app/core/dimension.dart';
import 'package:travo_app/screens/booking_screen.dart';
import 'package:travo_app/screens/favorite_screen.dart';
import 'package:travo_app/screens/home_screen.dart';
import 'package:travo_app/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  static const String routePath = 'home_screen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();

    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomeScreen(),
          FavoriteScreen(),
          BookingScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
          selectedItemColor: AppColor.primaryColor,
          unselectedItemColor: AppColor.primaryColor.withOpacity(0.5),
          margin: EdgeInsets.only(top: 15, bottom: 25, left: 38, right: 38),
          curve: Curves.fastEaseInToSlowEaseOut,
          onTap: (tab) => setState(() {
                _currentIndex = tab;
              }),
          currentIndex: _currentIndex,
          items: [
            SalomonBottomBarItem(
                activeIcon: Icon(Icons.house, size: iconSize),
                icon: Icon(
                  Icons.house_outlined,
                  size: iconSize,
                ),
                title: Text('Home')),
            SalomonBottomBarItem(
                activeIcon: Icon(Icons.favorite, size: iconSize),
                icon: Icon(Icons.favorite_outline, size: iconSize),
                title: Text('Favorite')),
            SalomonBottomBarItem(
                activeIcon: Icon(Icons.cases_sharp, size: iconSize),
                icon: Icon(Icons.cases_outlined, size: iconSize),
                title: Text('Booking')),
            SalomonBottomBarItem(
                activeIcon: Icon(Icons.people_alt, size: iconSize),
                icon: Icon(Icons.people_alt_outlined, size: iconSize),
                title: Text('Profile'))
          ]),
    );
  }
}
