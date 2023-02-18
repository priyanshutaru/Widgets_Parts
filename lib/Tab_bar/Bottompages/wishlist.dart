// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LeoonBottomWishlist extends StatefulWidget {
  const LeoonBottomWishlist({super.key});

  @override
  State<LeoonBottomWishlist> createState() => _LeoonBottomWishlistState();
}

class _LeoonBottomWishlistState extends State<LeoonBottomWishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Wishlist"),
      ),
    );
  }
}
