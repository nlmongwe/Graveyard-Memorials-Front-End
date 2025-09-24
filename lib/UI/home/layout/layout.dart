import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_project/Router/router.dart';

import '../../../Router/route_names.dart';
import '../../../loactor.dart';
import '../../../services/navigation_service.dart';
import '../../Navigation_bar/app_navigation_bar.dart';
import '../../navigation_drawer/navigation_drawer.dart';
import '../home_view/home_center_view.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return  ResponsiveBuilder(
        builder: (context, sizingInfo){
          return  Scaffold(
            key: scaffoldKey,
            backgroundColor: Colors.white10,
            drawer: sizingInfo.deviceScreenType == DeviceScreenType.mobile
                ? AppNavigationDrawer(scaffoldKey: scaffoldKey,)
                : null,
            body:  HomeCenterView(
              child: Column(
                children: [
                  AppNavigationBar(scaffoldKey: scaffoldKey,),
                  Expanded(child: Navigator(
                    key: locator<NavigationService>().navigatorKey,
                    onGenerateRoute: generateRoute,
                    initialRoute: HomeRoute,
                  )),
                ],
              ),
            ),
          );
        }
    );
  }
}
