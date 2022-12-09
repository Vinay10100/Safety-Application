import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:womensafteyhackfair/allfile/DashWidgets/DashAppbar.dart';
import 'package:womensafteyhackfair/allfile/DashWidgets/Emergency.dart';
import 'package:womensafteyhackfair/allfile/DashWidgets/LiveLocation.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DashAppbar(),
        Expanded(
          child: Container(
            child: ListView(
              shrinkWrap: true,
              children: [
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Emergency Contacts",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                Emergency(),


              //  SafeHome(),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 16.0, bottom: 10, top: 10),
                  child: Text(
                    "Near by  Locations",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                LiveLocation(),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
