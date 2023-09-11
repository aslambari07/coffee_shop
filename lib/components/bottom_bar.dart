// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../page/home/favorite_page.dart';
import '../page/home/home_page.dart';
import '../page/home/order_page.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/bottom-bar';

  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static const TextStyle optionsStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    FavoritePage(),
    // Text(
    //   'lagi di buat',
    //   style: optionsStyle,
    // ),
    OrderPage(),
    Text(
      'lagi di buat',
      style: optionsStyle,
    ),
    // NotifPage(),
  ];

  static const List<String> _tabLabels = [
    'Home',
    'Favorite',
    'Shopping Bag',
    'Notifications',
  ];

  static const List<IconData> _tabIcons = [
    Icons.home,
    Icons.favorite,
    Icons.shopping_bag,
    Icons.notifications,
  ];

  static const List<String> _customLabels = [
    'Home',
    'Favorite',
    'Shop',
    'Notif',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        height: 70.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            _tabLabels.length,
            (index) => GestureDetector(
              onTap: () => _onItemTapped(index),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    _tabIcons[index],
                    size: 28.0,
                    color: _selectedIndex == index
                        ? const Color(0xFFC67C4E)
                        : const Color(0xff8D8D8D),
                  ),
                  SizedBox(height: 4),
                  SizedBox(width: 70),
                  Text(
                    _customLabels[index],
                    style: TextStyle(
                      fontSize: 12.0, // Decreased text size
                      color: _selectedIndex == index
                          ? const Color(0xFFC67C4E)
                          : const Color(0xff8D8D8D),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
