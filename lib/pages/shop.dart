// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_nav/util/shop_grid.dart';

class UserShop extends StatelessWidget {
  const UserShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.all(8),
            color: Colors.grey[400],
            child: Row(children: [
              Icon(
                Icons.search,
                color: Colors.grey[300],
              ),
              Container(
                child: Text(
                  'Search',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ),
            ]),
          ),
        ),
      ),
      body: ShopGrid(),
    );
  }
}
