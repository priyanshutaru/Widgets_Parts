// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LeoonBottomCart extends StatefulWidget {
  const LeoonBottomCart({super.key});

  @override
  State<LeoonBottomCart> createState() => _LeoonBottomAccountState();
}

class _LeoonBottomAccountState extends State<LeoonBottomCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("My Cart")),
    );
  }
}
