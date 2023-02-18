// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SearchBarFlutter extends StatefulWidget {
  const SearchBarFlutter({super.key});

  @override
  State<SearchBarFlutter> createState() => _SearchBarFlutterState();
}

class _SearchBarFlutterState extends State<SearchBarFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Bar"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black45),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextField(
                  // obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    // prefixIcon: Icon(Icons.search),
                    hintText: 'Search Here',
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: Offset(1, 1),
                      color: Colors.grey.withOpacity(0.2),
                    )
                  ]),
              child: TextField(
                // obscureText: true,
                decoration: InputDecoration(
                    hintText: "Search Here",
                    // prefixIcon: Icon(
                    //   Icons.password,
                    //   color: Colors.deepOrangeAccent,
                    // ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.white, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.white, width: 1.0),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
