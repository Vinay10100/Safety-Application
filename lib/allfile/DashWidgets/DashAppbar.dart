import 'package:flutter/material.dart';
import 'package:womensaftey/allfile/Settings/SettingsScreen.dart';
// import 'package:womensafteyhackfair/constants.dart';

class DashAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Hey",
        style: TextStyle(
          color: Colors.grey[600],
        ),
      ),
      subtitle: GestureDetector(
        child: Text(
          "Hello ",
          style: TextStyle(
              color: Colors.black,
              // fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: MediaQuery.of(context).size.width * 0.03),
        ),
      ),
      trailing: Card(
        elevation: 0 ,
        // shape: CircleBorder(),
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SettingsScreen()));
          },
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Image.asset(
              "assets/menu.png",
              height: 24,
            ),
          ),
        ),
      ),
    );
  }
}
