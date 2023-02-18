// ignore_for_file: prefer_const_constructors, unused_field, avoid_unnecessary_containers, unused_local_variable

import 'package:flutter/material.dart';

class DbStechTab extends StatefulWidget {
  const DbStechTab({super.key});

  @override
  State<DbStechTab> createState() => _DbStechTabState();
}

class _DbStechTabState extends State<DbStechTab> {
  @override
  Widget build(BuildContext context) {
    // TabController _tabController = TabController(length: 2, vsync: null);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, top: 70),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.black,
                ),
                Expanded(child: Container()),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text("Discover"),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            // ignore: prefer_const_literals_to_create_immutables
            child: TabBar(tabs: [
              Tab(
                text: "Placed",
              ),
              Tab(
                text: "Emotions",
              )
            ]),
          ),
          Container(
            child: TabBarView(children: []),
          ),
        ],
      ),
    );
  }
}
