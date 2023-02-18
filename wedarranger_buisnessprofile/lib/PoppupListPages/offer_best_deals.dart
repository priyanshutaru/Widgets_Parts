import 'package:flutter/material.dart';

import '../bottompages/recivedeals.dart';

class BuisnessDealsOffer extends StatefulWidget {
  const BuisnessDealsOffer({super.key});

  @override
  State<BuisnessDealsOffer> createState() => _BuisnessDealsOfferState();
}

class _BuisnessDealsOfferState extends State<BuisnessDealsOffer> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(),
    // body:
    return BuisnessRecieveDeals();
    // );
  }
}
