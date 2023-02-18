// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class TabMergingHere extends StatelessWidget {
  const TabMergingHere({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      // The Builder widget is used to have a different BuildContext to access
      // closest DefaultTabController.
      child: Builder(
        builder: (BuildContext context) {
          final TabController tabController = DefaultTabController.of(context);
          tabController.addListener(() {
            if (!tabController.indexIsChanging) {
              // Your code goes here.
              // To get index of current tab use tabController.index
            }
          });
          // double h = MediaQuery.of(context).size.height;
          // double w = MediaQuery.of(context).size.width;
          return Scaffold(
            appBar: AppBar(
              title: Text("Wedarranger"),
            ),
            backgroundColor: Colors.white,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20, top: 70),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          //color: Colors.red,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://wedarranger.com/wed_vendor/upload/punjabi-dhol-band-baja-group-reis-magos-goa-wedding-bands-ubal2.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Nawabi Band",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              // Icon(Icons.location_on),
                              Text(
                                "Lucknow",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Icon(Icons.location_on),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Icon(
                                Icons.favorite_border,
                                color: Colors.black,
                              ),
                              Text(
                                "0",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 50,
                      //   width: 180,
                      //   child: ElevatedButton(
                      //     onPressed: () {},
                      //     style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      //     child: Text(
                      //       'SendMassage',
                      //       style: TextStyle(fontSize: 20, color: Colors.white),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green[700],
                              onPrimary: Colors.white),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                'Send Massage',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ), // <-- Text
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                Container(
                  child: TabBar(
                    // ignore: prefer_const_literals_to_create_immutables
                    tabs: [
                      Tab(text: 'Ideas'),
                      Tab(text: 'Price'),
                      Tab(text: 'About'),
                      Tab(text: 'Reviews'),
                      Tab(text: 'Copy'),
                    ],
                  ),
                ),
                Container(
                  child: TabBarView(
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
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 25),
                                ),
                                Text(
                                  '20000Rs per day',
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 20),
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
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Text('Write A Review Here'),
                    ],
                    // children: tabs.map((Tab tab) {
                    //   return Text(
                    //       // '${tab.text!} Tab',
                    //       'hello'
                    //       // style: Theme.of(context).textTheme.headlineSmall,
                    //       );
                    // }).toList(),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
