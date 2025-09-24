import 'package:flutter/material.dart';
import 'package:web_project/Router/route_names.dart';
import 'drawer_header.dart';
import 'drawer_item.dart';

class AppNavigationDrawer extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const AppNavigationDrawer({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration:  BoxDecoration(
          color: Colors.white.withOpacity(0.9)),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const CustomDrawerHeader(),
          const SizedBox(height: 10),
          DrawerItem(
            title: "home",
            navigationPath: HomeRoute, scaffoldKey: scaffoldKey,
          ),
          DrawerItem(
              title: "find a grave",
          navigationPath: FindGrave, scaffoldKey: scaffoldKey,),
          DrawerItem(
            title: "admin",
            navigationPath: Admin, scaffoldKey: scaffoldKey,)
        ],
      ),
    );
  }
}
