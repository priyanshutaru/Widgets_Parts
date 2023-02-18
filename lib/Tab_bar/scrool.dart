// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AutoScrollWidget extends StatefulWidget {
  const AutoScrollWidget({super.key});

  @override
  State<AutoScrollWidget> createState() => _AutoScrollWidgetState();
}

class _AutoScrollWidgetState extends State<AutoScrollWidget> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Auto Scrollbar"),
      ),
      body: Container(
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        // padding: EdgeInsets.symmetric(horizontal: h * 0.11),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: h * 0.18,
                width: w * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  // color: Color.fromARGB(255, 212, 14, 14),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://wedarranger.com/admin/upload/Rajesh_pande.jpg"),
                      fit: BoxFit.cover),
                ),
                child: Center(
                  child: Text(
                    "PhotoGrapher",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                height: h * 0.18,
                width: w * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black26,
                ),
                // color: Colors.red,
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Starts      Rs 5000",
                    style: TextStyle(fontSize: 25),
                  ),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
