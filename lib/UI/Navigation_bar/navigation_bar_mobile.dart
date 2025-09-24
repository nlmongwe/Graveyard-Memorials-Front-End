import 'package:flutter/material.dart';

import 'app_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const NavigationBarMobile({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: (){
              scaffoldKey.currentState!.openDrawer();
            },
          ),
          const Hero(tag: "app-logo-screen-resize", child: AppLogo())
        ],
      ),
    );
    ;
  }
}
