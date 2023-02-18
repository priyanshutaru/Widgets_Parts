// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tabbar/Tab_bar/Bottompages/account.dart';
import 'package:tabbar/Tab_bar/Bottompages/cart.dart';
import 'package:tabbar/Tab_bar/Bottompages/wishlist.dart';

class LeoonBottomBar extends StatefulWidget {
  const LeoonBottomBar({super.key});

  @override
  State<LeoonBottomBar> createState() => _LeoonBottomBarState();
}

class _LeoonBottomBarState extends State<LeoonBottomBar> {
  int Index = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      Index = index;
    });
  }

  List pages = [
    LeoonBottomCart(),
    LeoonBottomWishlist(),
    LeoonBottomCart(),
    LeoonBottomAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leoon"),
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
                      child: Text("My Account"),
                    ),
                    PopupMenuItem<int>(
                      value: 1,
                      child: Text("About"),
                    ),
                    PopupMenuItem<int>(
                      value: 2,
                      child: Text("Support"),
                    ),
                    PopupMenuItem<int>(
                      value: 3,
                      child: Text("Support"),
                    ),
                  ];
                },
              )
            ],
          ),
        ],
      ),
      body: pages[Index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: Index,
        onTap: _navigateBottomBar,
        // ignore: prefer_const_literals_to_create_immutables
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.black,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'Wishlist'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
