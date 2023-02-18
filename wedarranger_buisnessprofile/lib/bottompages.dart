// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:wedarranger_buisnessprofile/PoppupListPages/buisness_profile.dart';
import 'package:wedarranger_buisnessprofile/bottompages/home.dart';
import 'package:wedarranger_buisnessprofile/bottompages/inquary.dart';
import 'package:wedarranger_buisnessprofile/bottompages/post.dart';
import 'package:wedarranger_buisnessprofile/bottompages/recivedeals.dart';

import 'PoppupListPages/basic_profile.dart';

class BuisnessNavBar extends StatefulWidget {
  const BuisnessNavBar({super.key});

  @override
  State<BuisnessNavBar> createState() => _BuisnessNavBarState();
}

class _BuisnessNavBarState extends State<BuisnessNavBar> {
  List pages = [
    BuisnessHome(),
    BuisnessPost(),
    BuisnessRecieveDeals(),
    BuisnessInquary(),
  ];

  int current_page = 0;

  void ontap(int index) {
    setState(() {
      current_page = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              // Text("Location"),
              Icon(Icons.search),
              Icon(Icons.favorite_border),

              PopupMenuButton(
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem<int>(
                      value: 0,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pop(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new BuisnessProfile()),
                            );
                          },
                          child: Text("Dashboard")),
                    ),
                    PopupMenuItem<int>(
                      value: 1,
                      child: Text("Business Profile"),
                    ),
                    PopupMenuItem<int>(
                      value: 2,
                      child: Text("Best Deals Offers"),
                    ),
                    PopupMenuItem<int>(
                      value: 3,
                      child: Text("Personal Profile"),
                    ),
                    PopupMenuItem<int>(
                      value: 4,
                      child: Text("Membership"),
                    ),
                    PopupMenuItem<int>(
                      value: 5,
                      child: Text("Upload Photos"),
                    ),
                    PopupMenuItem<int>(
                      value: 6,
                      child: Text("Inquiry"),
                    ),
                    PopupMenuItem<int>(
                      value: 7,
                      child: Text("Logout"),
                    ),
                  ];
                },
              )
            ],
          ),
        ],
      ),
      body: pages[current_page],
      drawer: Drawer(),
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          onTap: ontap,
          currentIndex: current_page,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.image),
              label: "Posts",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Get Deals Here",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.question_mark),
              label: "Inquiry",
            ),
          ]),
    );
  }
}
