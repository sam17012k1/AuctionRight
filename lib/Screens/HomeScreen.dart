import 'Add.dart';
import 'Home.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'MyAuctions.dart';
import 'Profile.dart';
import 'Search.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedpage=0;
  final _pageOption=[Homes(),Search(),Add(),MyAuctions(),Profile()];
  final List<String> titles= ["Auctions","Search","Create Auction","My Auctions","Profile"];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

      body: _pageOption[selectedpage],
      bottomNavigationBar: ConvexAppBar(
        color: Colors.white,
        backgroundColor: Colors.teal,
        items: [
          TabItem(icon: Icons.home,title:"Home"),
          TabItem(icon: Icons.location_on,title:"Near Me"),
          TabItem(icon: Icons.add,title:"Add"),

          TabItem(icon: Icons.favorite,title: "My Auctions"),
          TabItem(icon: Icons.person,title:"Profile"),

        ],
        initialActiveIndex: selectedpage,
        onTap: (int index ){
          setState(() {
            selectedpage=index;
          });
        },
      ),

    );
  }
}