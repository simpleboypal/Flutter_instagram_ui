// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, unused_field, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_nav/pages/account.dart';
import 'package:flutter_nav/pages/home.dart';
import 'package:flutter_nav/pages/reels.dart';
import 'package:flutter_nav/pages/search.dart';
import 'package:flutter_nav/pages/shop.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int _selectedindex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      body: _children[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _navigateBottomNavBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'Reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
