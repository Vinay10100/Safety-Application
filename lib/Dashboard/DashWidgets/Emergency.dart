import 'package:flutter/material.dart';
import 'package:womensafteyhackfair/Dashboard/DashWidgets/EmergenciesPages/AmbulanceEmergency.dart';
import 'package:womensafteyhackfair/Dashboard/DashWidgets/EmergenciesPages/MahilaHelpline.dart';
import 'package:womensafteyhackfair/Dashboard/DashWidgets/EmergenciesPages/PoliceEmergency.dart';

class Emergency extends StatelessWidget {
  const Emergency({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,


        children: [
          MahilaHelpline(),
          PoliceEmergency(),
          AmbulanceEmergency(),

        ],
      ),
    );
  }
}
