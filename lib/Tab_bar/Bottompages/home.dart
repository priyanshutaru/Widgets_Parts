// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LeoonBottomHome extends StatefulWidget {
  const LeoonBottomHome({super.key});

  @override
  State<LeoonBottomHome> createState() => _LeoonBottomHomeState();
}

class _LeoonBottomHomeState extends State<LeoonBottomHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Home")),
    );
  }
}
