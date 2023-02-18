// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class CommonViewTAbbar extends StatefulWidget {
  const CommonViewTAbbar({super.key});

  @override
  State<CommonViewTAbbar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CommonViewTAbbar> {
  List<String> items = [
    "Ideas",
    "Price",
    "About",
    "Reviews",
    "Copied",
    // "Activity",
    // "Setting",
    // "Profile",
  ];

  /// List of body icon
  List<IconData> icons = [
    Icons.home,
    Icons.explore,
    Icons.search,
    Icons.feed,
    Icons.post_add,
    // Icons.local_activity,
    // Icons.settings,
    // Icons.person
  ];
  int current = 0;
  @override
  Widget build(BuildContext context) {
    //double h = MediaQuery.of(context).size.height;
    double h = MediaQuery.of(context).size.height;

    double w = MediaQuery.of(context).size.width;
    // TabController _tabController = TabController(length: 5, vsync: this);

    return Scaffold(
      appBar: AppBar(
        title: Text("Wedarranger"),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: h * 0.1,
                  width: w * 0.2,
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
                          color: Colors.black, fontWeight: FontWeight.bold),
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
                              color: Colors.black, fontWeight: FontWeight.bold),
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
                        primary: Colors.green[700], onPrimary: Colors.white),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          'Send Massage',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ), // <-- Text
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: w,
            height: h * 0.7,
            margin: const EdgeInsets.all(5),
            child: Column(
              children: [
                /// CUSTOM TABBAR
                Container(
                  width: double.infinity,
                  height: 40,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: items.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  current = index;
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 10),
                                margin: const EdgeInsets.all(5),
                                width: 80,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: current == index
                                      ? Colors.white70
                                      : Colors.white54,
                                  borderRadius: current == index
                                      ? BorderRadius.circular(15)
                                      : BorderRadius.circular(10),
                                  border: current == index
                                      ? Border.all(
                                          color: Colors.deepPurpleAccent,
                                          width: 0)
                                      : null,
                                ),
                                child: Center(
                                  child: Text(
                                    items[index],
                                    style: GoogleFonts.laila(
                                        fontWeight: FontWeight.w500,
                                        color: current == index
                                            ? Colors.black
                                            : Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                                visible: current == index,
                                child: Container(
                                  width: 5,
                                  height: 5,
                                  decoration: const BoxDecoration(
                                      color: Colors.deepPurpleAccent,
                                      shape: BoxShape.circle),
                                ))
                          ],
                        );
                      }),
                ),

                /// MAIN BODY
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  width: double.infinity,
                  height: 280,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icons[current],
                        size: 200,
                        color: Colors.red,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        items[current],
                        style: GoogleFonts.laila(
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
