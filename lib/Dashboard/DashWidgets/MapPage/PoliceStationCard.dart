import 'package:flutter/material.dart';

class PoliceStationCard extends StatelessWidget {
  final Function openMapFunc;
  const PoliceStationCard({Key key, this.openMapFunc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8,right:10),
      child: Column(
        children: [
          Card(
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: InkWell(
              onTap: (){
                openMapFunc("Police Stations near me");
              },
              child: Container(
                height: 60,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF80F9FD),
                      Color(0xFF62BAE5),
                      Color(0xFF79FBB8),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.white.withOpacity(0.5),
                          radius: 20,
                          child: Center(
                              child: Image.asset(
                                "assets/police.png",

                                height: 25,
                              ))),

                    ],
                  ),
                ),
              ),
            ),
          ),
          Text("Police Stations")
        ],
      ),
    );
  }
}
