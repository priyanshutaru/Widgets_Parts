// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class LeoonSmallCard extends StatefulWidget {
  const LeoonSmallCard({super.key});

  @override
  State<LeoonSmallCard> createState() => _LeoonSmallCardState();
}

class _LeoonSmallCardState extends State<LeoonSmallCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    //color: Colors.red,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 1),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://leoon.in/assets/img/fresh-meat.png"),
                          fit: BoxFit.fitWidth),
                    ),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Fresh",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 140,
                    child: Text(
                      "Order 100% fresh cut meat online",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    //color: Colors.red,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 1),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://leoon.in/assets/img/fresh-meat.png"),
                          fit: BoxFit.fitWidth),
                    ),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Fresh",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 140,
                    child: Text(
                      "Order 100% fresh cut meat online",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    //color: Colors.red,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 1),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://leoon.in/assets/img/fresh-meat.png"),
                          fit: BoxFit.fitWidth),
                    ),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Fresh",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 140,
                    child: Text(
                      "Order 100% fresh cut meat online",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
