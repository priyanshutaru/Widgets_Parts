// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

const List<Tab> tabs = <Tab>[
  Tab(text: 'Ideas'),
  Tab(text: 'Price'),
  Tab(text: 'About'),
  Tab(text: 'Reviews'),
  Tab(text: 'Copy'),
];

class TabOfSubMenu extends StatelessWidget {
  const TabOfSubMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
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
              tabs: tabs,
            ),
          ),
          body: TabBarView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                height: 100,
                width: 200,
                color: Colors.green,
                child: Text("hi"),
              ),
              Text('hello'),
              Text('there'),
              Text('here'),
              Text('last'),
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
