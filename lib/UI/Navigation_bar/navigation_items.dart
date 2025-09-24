import 'package:flutter/material.dart';
import 'package:web_project/Router/route_names.dart';


import 'navigation_bar_item.dart';

class NavigationItems extends StatelessWidget {
  const NavigationItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: const Row(
        children: <Widget>[
          NavigationBarItem("home", HomeRoute),
          SizedBox(
            width: 20,
          ),
          NavigationBarItem("find a grave", FindGrave),
          SizedBox(
            width: 20,
          ),
          NavigationBarItem("admin", Admin),

        ],
      ),
    );
  }
}
