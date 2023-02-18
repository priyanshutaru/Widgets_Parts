// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:tabbar/CustomTabbar/custombar.dart';
import 'package:tabbar/Drawer/maindrawer.dart';
import 'package:tabbar/SearchGridExplor/GridView.dart';
import 'package:tabbar/SearchGridExplor/subtabofgridview.dart';
import 'package:tabbar/Tab_bar/common_view.dart';
import 'package:tabbar/Tab_bar/customtabbar.dart';
import 'package:tabbar/Tab_bar/dbestech.dart';
import 'package:tabbar/Tab_bar/drawer.dart';
import 'package:tabbar/Tab_bar/homepage.dart';
import 'package:tabbar/Tab_bar/leoonbottom.dart';
import 'package:tabbar/Tab_bar/listview.dart';
import 'package:tabbar/Tab_bar/listviewofmuttoncard.dart';
import 'package:tabbar/Tab_bar/muttoncard.dart';
import 'package:tabbar/Tab_bar/scrool.dart';
import 'package:tabbar/Tab_bar/searchbar.dart';
import 'package:tabbar/Tab_bar/venue.dart';
import 'package:tabbar/chicken_card.dart';
import 'package:tabbar/mergingboth.dart';
import 'package:tabbar/smalltab.dart';
import 'package:tabbar/tab.dart';
import 'package:tabbar/tabwed.dart';

import 'CustomTabbar/tabbar.dart';
import 'Tab_bar/subdrawer.dart';
import 'crausell.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      //home: GFGDrawer(),
      // home: CommonViewTAbbar(),
      // home: DbStechTab(),
      // home: SearchBarFlutter(),
      //home: WedHomePage()
      // home: MyListviewb(),
      // home: TabMergingHere(),
      // home: TabOfSubMenu1(),
      // home: AutoScrollWidget(),
      // home: CustomTAb(),
      // home: WedVenue(),
      // home: LeoonMuttonCard(),
      // home: LeoonMuttonListView(),
      // home: LeoonBottomBar(),
      // home: LeoonChickenCard(),
      // home: LeoonSmallCard(),
      // home: WedHomePage(),
      // home: CustomTabbar(),
      // home: GridViewExplor(),
      // home: SubMenuExplor(),
      // home: Crausel(),
      home: TabBarPage(),
    );
  }
}
