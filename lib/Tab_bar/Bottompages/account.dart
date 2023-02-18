// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LeoonBottomAccount extends StatefulWidget {
  const LeoonBottomAccount({super.key});

  @override
  State<LeoonBottomAccount> createState() => _LeoonBottomAccountState();
}

class _LeoonBottomAccountState extends State<LeoonBottomAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Account")),
    );
  }
}
