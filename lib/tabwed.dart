// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class TabOfSubMenu1 extends StatelessWidget {
  const TabOfSubMenu1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      // The Builder widget is used to have a different BuildContext to access
      // closest DefaultTabController.
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context);
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {
            // Your code goes here.
            // To get index of current tab use tabController.index
          }
        });
        return Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.black,
              indicatorWeight: 4,
              tabs: [
                Tab(text: 'Ideas'),
                Tab(text: 'Price'),
                Tab(text: 'About'),
                Tab(text: 'Reviews'),
                Tab(text: 'Copy'),
              ],
            ),
          ),
          body: TabBarView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // Ideabody(),

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                      child: Text('Content is Empaty'),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          'Starting Price',
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                        Text(
                          '20000Rs per day',
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Nawabi Band is one of the leading businesses in the Wedding Bands. Also known for Wedding Bands, Orchestra Bands, Dhol Players, Bands, Wedding Bands For Punjabi, Nashik Dhol Players, Music Band Garbha, Music Band Punjabi Dhol and much more.',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ],
              ),
              Text('Write A Review Here'),
              Text("link copy here"),
            ],
            // children: tabs.map((Tab tab) {
            //   return Text(
            //       // '${tab.text!} Tab',
            //       'hello'
            //       // style: Theme.of(context).textTheme.headlineSmall,
            //       );
            // }).toList(),
          ),
        );
      }),
    );
  }
}
