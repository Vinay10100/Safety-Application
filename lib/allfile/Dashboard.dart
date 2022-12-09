import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart' as appPermissions;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:womensaftey/allfile/Home.dart';


class Dashboard extends StatefulWidget {
  final int pageIndex;
  const Dashboard({Key key, this.pageIndex = 0}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState(currentPage: pageIndex);
}

class _DashboardState extends State<Dashboard> {
  _DashboardState({this.currentPage = 0});

  List<Widget> screens = [Home()];
  int currentPage = 0;


  @override
  void initState() {
    super.initState();
    checkPermission();
  }

  SharedPreferences prefs;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFCFE),
      body: SafeArea(child: screens[0]),
    );
  }

  checkPermission() async {
    appPermissions.PermissionStatus conPer =
        await appPermissions.Permission.contacts.status;
    appPermissions.PermissionStatus locPer =
        await appPermissions.Permission.location.status;
    appPermissions.PermissionStatus phonePer =
        await appPermissions.Permission.phone.status;
    appPermissions.PermissionStatus smsPer =
        await appPermissions.Permission.sms.status;
    if (conPer != appPermissions.PermissionStatus.granted) {
      await appPermissions.Permission.contacts.request();
    }
    if (locPer != appPermissions.PermissionStatus.granted) {
      await appPermissions.Permission.location.request();
    }
    if (phonePer != appPermissions.PermissionStatus.granted) {
      await appPermissions.Permission.phone.request();
    }
    if (smsPer != appPermissions.PermissionStatus.granted) {
      await appPermissions.Permission.sms.request();
    }
  }
}
