// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_nav/util/bubblestories.dart';
import 'package:flutter_nav/util/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'Dayhun',
    'Naeon',
    'Jihyo',
    'Mina',
    'chaeyoung',
    'Momo',
    'jyeong young'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              // ignore: prefer_const_constructors
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                //      GestureDetector(
                //        onTap: (() {
                //          //do something
                //        }),
                //      ),
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          //stories section
          Container(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return Bubblstories(text: people[index]);
              },
            ),
          ),

          //Posts section
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return UserPosts(name: people[index]);
              },
            ),
          )
        ],
      ),
      //Posts
    );
  }
}
