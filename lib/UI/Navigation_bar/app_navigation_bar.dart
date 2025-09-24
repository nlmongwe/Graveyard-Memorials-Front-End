import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_project/UI/Navigation_bar/navigation_bar_mobile.dart';

import 'navigation_bar_desktop_tablet.dart';

class AppNavigationBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const AppNavigationBar({super.key, required this.scaffoldKey} );

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      // Check the sizing information here and return your UI
      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return const NavigationBarDesktopTablet();
      }

      if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
        return const NavigationBarDesktopTablet();
      }

      if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return NavigationBarMobile(scaffoldKey: scaffoldKey);
      }
      return Container(color: Colors.purple);
    });
  }
}
