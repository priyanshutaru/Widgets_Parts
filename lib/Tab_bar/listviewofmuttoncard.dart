// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class LeoonMuttonListView extends StatefulWidget {
  const LeoonMuttonListView({super.key});

  @override
  State<LeoonMuttonListView> createState() => _LeoonMuttonListViewState();
}

class _LeoonMuttonListViewState extends State<LeoonMuttonListView> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: h * 1,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: h * .88,
                  width: w * .9,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: h * .45,
                        width: w * .9,
                        color: Colors.black87,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          "Desi Chicken Curry Cut 800g",
                          style: TextStyle(
                              fontSize: h * .0250,
                              color: Colors.grey,
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
                        child: Container(
                          height: h * .050,
                          width: w * .25,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),

                          // color: Colors.green,
                          child: Center(
                              child: Text(
                            "800 gram",
                            style: TextStyle(fontSize: h * .02),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: h * .010,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Rs.769",
                              style: TextStyle(
                                  fontSize: h * .020,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "M.R.P: Rs.799",
                              style: TextStyle(
                                  fontSize: h * 0.02, color: Colors.grey),
                            ),
                            Container(
                              height: h * 0.080,
                              width: w * .3,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: h * 0.050,
                                    width: w * .08,
                                    color: Colors.black12,
                                    child: Center(
                                      child: Text(
                                        "-",
                                        style: TextStyle(
                                            fontSize: h * 0.04,
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: h * 0.035,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Container(
                                    height: h * 0.050,
                                    width: w * .08,
                                    color: Colors.black12,
                                    child: Center(
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                            fontSize: h * .040,
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // DottedLine(
                      //   dashLength: 1,
                      //   dashGapLength: 1,
                      // )
                      SizedBox(
                        height: h * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Divider(
                          color: Colors.black, //color of divider
                          height: 5, //height spacing of divider
                          thickness: 1, //thickness of divier line
                          // indent: 25, //spacing at the start of divider
                          // endIndent: 25, //spacing at the end of divider
                        ),
                      ),
                      SizedBox(
                        height: h * .03,
                      ),

                      Center(
                        child: Text(
                          "Delevery in one hours",
                          style: TextStyle(
                              fontSize: h * .03,
                              color: Colors.grey[400],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: h * .88,
                  width: w * .9,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: h * .45,
                        width: w * .9,
                        color: Colors.black87,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          "Desi Chicken Curry Cut 800g",
                          style: TextStyle(
                              fontSize: h * .0250,
                              color: Colors.grey,
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
                        child: Container(
                          height: h * .050,
                          width: w * .25,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),

                          // color: Colors.green,
                          child: Center(
                              child: Text(
                            "800 gram",
                            style: TextStyle(fontSize: h * .02),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: h * .010,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Rs.769",
                              style: TextStyle(
                                  fontSize: h * .020,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "M.R.P: Rs.799",
                              style: TextStyle(
                                  fontSize: h * 0.02, color: Colors.grey),
                            ),
                            Container(
                              height: h * 0.080,
                              width: w * .3,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: h * 0.050,
                                    width: w * .08,
                                    color: Colors.black12,
                                    child: Center(
                                      child: Text(
                                        "-",
                                        style: TextStyle(
                                            fontSize: h * 0.04,
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: h * 0.035,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Container(
                                    height: h * 0.050,
                                    width: w * .08,
                                    color: Colors.black12,
                                    child: Center(
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                            fontSize: h * .040,
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // DottedLine(
                      //   dashLength: 1,
                      //   dashGapLength: 1,
                      // )
                      SizedBox(
                        height: h * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Divider(
                          color: Colors.black, //color of divider
                          height: 5, //height spacing of divider
                          thickness: 1, //thickness of divier line
                          // indent: 25, //spacing at the start of divider
                          // endIndent: 25, //spacing at the end of divider
                        ),
                      ),
                      SizedBox(
                        height: h * .03,
                      ),

                      Center(
                        child: Text(
                          "Delevery in one hours",
                          style: TextStyle(
                              fontSize: h * .03,
                              color: Colors.grey[400],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: h * .88,
                  width: w * .9,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: h * .45,
                        width: w * .9,
                        color: Colors.black87,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          "Desi Chicken Curry Cut 800g",
                          style: TextStyle(
                              fontSize: h * .0250,
                              color: Colors.grey,
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
                        child: Container(
                          height: h * .050,
                          width: w * .25,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),

                          // color: Colors.green,
                          child: Center(
                              child: Text(
                            "800 gram",
                            style: TextStyle(fontSize: h * .02),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: h * .010,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Rs.769",
                              style: TextStyle(
                                  fontSize: h * .020,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "M.R.P: Rs.799",
                              style: TextStyle(
                                  fontSize: h * 0.02, color: Colors.grey),
                            ),
                            Container(
                              height: h * 0.080,
                              width: w * .3,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: h * 0.050,
                                    width: w * .08,
                                    color: Colors.black12,
                                    child: Center(
                                      child: Text(
                                        "-",
                                        style: TextStyle(
                                            fontSize: h * 0.04,
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: h * 0.035,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Container(
                                    height: h * 0.050,
                                    width: w * .08,
                                    color: Colors.black12,
                                    child: Center(
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                            fontSize: h * .040,
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // DottedLine(
                      //   dashLength: 1,
                      //   dashGapLength: 1,
                      // )
                      SizedBox(
                        height: h * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Divider(
                          color: Colors.black, //color of divider
                          height: 5, //height spacing of divider
                          thickness: 1, //thickness of divier line
                          // indent: 25, //spacing at the start of divider
                          // endIndent: 25, //spacing at the end of divider
                        ),
                      ),
                      SizedBox(
                        height: h * .03,
                      ),

                      Center(
                        child: Text(
                          "Delevery in one hours",
                          style: TextStyle(
                              fontSize: h * .03,
                              color: Colors.grey[400],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: h * .88,
                  width: w * .9,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: h * .45,
                        width: w * .9,
                        color: Colors.black87,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          "Desi Chicken Curry Cut 800g",
                          style: TextStyle(
                              fontSize: h * .0250,
                              color: Colors.grey,
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
                        child: Container(
                          height: h * .050,
                          width: w * .25,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),

                          // color: Colors.green,
                          child: Center(
                              child: Text(
                            "800 gram",
                            style: TextStyle(fontSize: h * .02),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: h * .010,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Rs.769",
                              style: TextStyle(
                                  fontSize: h * .020,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "M.R.P: Rs.799",
                              style: TextStyle(
                                  fontSize: h * 0.02, color: Colors.grey),
                            ),
                            Container(
                              height: h * 0.080,
                              width: w * .3,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: h * 0.050,
                                    width: w * .08,
                                    color: Colors.black12,
                                    child: Center(
                                      child: Text(
                                        "-",
                                        style: TextStyle(
                                            fontSize: h * 0.04,
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: h * 0.035,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Container(
                                    height: h * 0.050,
                                    width: w * .08,
                                    color: Colors.black12,
                                    child: Center(
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                            fontSize: h * .040,
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // DottedLine(
                      //   dashLength: 1,
                      //   dashGapLength: 1,
                      // )
                      SizedBox(
                        height: h * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Divider(
                          color: Colors.black, //color of divider
                          height: 5, //height spacing of divider
                          thickness: 1, //thickness of divier line
                          // indent: 25, //spacing at the start of divider
                          // endIndent: 25, //spacing at the end of divider
                        ),
                      ),
                      SizedBox(
                        height: h * .03,
                      ),

                      Center(
                        child: Text(
                          "Delevery in one hours",
                          style: TextStyle(
                              fontSize: h * .03,
                              color: Colors.grey[400],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: h * .88,
                  width: w * .9,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: h * .45,
                        width: w * .9,
                        color: Colors.black87,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          "Desi Chicken Curry Cut 800g",
                          style: TextStyle(
                              fontSize: h * .0250,
                              color: Colors.grey,
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
                        child: Container(
                          height: h * .050,
                          width: w * .25,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),

                          // color: Colors.green,
                          child: Center(
                              child: Text(
                            "800 gram",
                            style: TextStyle(fontSize: h * .02),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: h * .010,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Rs.769",
                              style: TextStyle(
                                  fontSize: h * .020,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "M.R.P: Rs.799",
                              style: TextStyle(
                                  fontSize: h * 0.02, color: Colors.grey),
                            ),
                            Container(
                              height: h * 0.080,
                              width: w * .3,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: h * 0.050,
                                    width: w * .08,
                                    color: Colors.black12,
                                    child: Center(
                                      child: Text(
                                        "-",
                                        style: TextStyle(
                                            fontSize: h * 0.04,
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: h * 0.035,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Container(
                                    height: h * 0.050,
                                    width: w * .08,
                                    color: Colors.black12,
                                    child: Center(
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                            fontSize: h * .040,
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // DottedLine(
                      //   dashLength: 1,
                      //   dashGapLength: 1,
                      // )
                      SizedBox(
                        height: h * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Divider(
                          color: Colors.black, //color of divider
                          height: 5, //height spacing of divider
                          thickness: 1, //thickness of divier line
                          // indent: 25, //spacing at the start of divider
                          // endIndent: 25, //spacing at the end of divider
                        ),
                      ),
                      SizedBox(
                        height: h * .03,
                      ),

                      Center(
                        child: Text(
                          "Delevery in one hours",
                          style: TextStyle(
                              fontSize: h * .03,
                              color: Colors.grey[400],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
