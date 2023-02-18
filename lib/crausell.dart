// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Crausel extends StatefulWidget {
  const Crausel({super.key});

  @override
  State<Crausel> createState() => _CrauselState();
}

class _CrauselState extends State<Crausel> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Crausel"),
      ),
      // body: Container(
      //   child: CarouselSlider ( options: CarouselOptions(
      //         autoPlay: true,
      //       ), items: [],),
      body: Container(
        height: h * .4,
        width: w * .5,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black54, width: 0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: h * .3,
              width: w * .5,
              decoration: BoxDecoration(
                // color: Colors.cyanAccent,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://wedarranger.com/wed_vendor/upload/unnamed.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "PT Photography",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: h * .018,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      "Price",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: h * .018,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            // ignore: prefer_const_literals_to_create_immutables
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(Icons.location_on),
                      Text(
                        "Harihar Nagar",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: h * .010,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Text(
                  "50000 Rs.",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: h * .015,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
