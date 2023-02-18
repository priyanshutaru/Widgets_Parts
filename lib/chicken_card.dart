// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LeoonChickenCard extends StatefulWidget {
  const LeoonChickenCard({super.key});

  @override
  State<LeoonChickenCard> createState() => _LeoonChickenCardState();
}

class _LeoonChickenCardState extends State<LeoonChickenCard> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: h * .45,
            width: w * .8,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: h * .2,
                  width: w * .8,
                  // color: Colors.black87,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://leoon.in/assets/img/product_img/desi-chicken-murga.png"),
                        fit: BoxFit.fill),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15),
                  child: Text(
                    "Desi Chicken Curry Cut 800g",
                    style: TextStyle(
                        fontSize: h * .0250,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: h * .010,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("Country Chickens are naturally fed.They"),
                ),
                SizedBox(
                  height: h * 0.025,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Container(
                        height: h * .035,
                        width: w * .25,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8)),

                        // color: Colors.green,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "800 gram",
                              style: TextStyle(fontSize: h * .015),
                            ),
                            Icon(Icons.keyboard_arrow_down),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: w * 0.03,
                      ),
                      Text(
                        "Rs.769",
                        style: TextStyle(
                            fontSize: h * .020,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Rs.699",
                        style: TextStyle(
                            fontSize: h * .0150,
                            color: Colors.black38,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Center(
                  child: Container(
                    // ignore: sort_child_properties_last
                    child: Center(
                      child: Text(
                        "Add To Cart",
                        style: TextStyle(
                            color: Color.fromARGB(255, 82, 13, 8),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    height: h * 0.06,
                    width: w * 0.7,
                    decoration: BoxDecoration(
                        // color: Colors.red,

                        border:
                            Border.all(color: Color.fromARGB(255, 125, 9, 9)),
                        borderRadius: BorderRadius.circular(15)),
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
