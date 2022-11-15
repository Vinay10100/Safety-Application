import 'package:flutter/material.dart';
import 'package:womensafteyhackfair/Dashboard/DashWidgets/MapPage/BusStationCard.dart';
import 'package:womensafteyhackfair/Dashboard/DashWidgets/MapPage/HospitalCard.dart';
import 'package:womensafteyhackfair/Dashboard/DashWidgets/MapPage/PoliceStationCard.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LiveLocation extends StatelessWidget {
  const LiveLocation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      child: ListView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          children: [
            PoliceStationCard(openMapFunc: openMap),
            HospitalCard(openMapFunc: openMap),
            BusStationCard(openMapFunc: openMap)
          ]),
    );
  }

  static Future<void> openMap(String location) async {
    String googleUrl = 'https://www.google.com/maps/search/?api=1&query=$location';

    try {
      await launch(googleUrl);
    } catch (e) {
      print(e);
      Fluttertoast.showToast(
          msg: "Something went wrong! Call emergency numbers.");
    }

  }
}
