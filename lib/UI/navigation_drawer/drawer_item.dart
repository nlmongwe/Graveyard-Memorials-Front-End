import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../loactor.dart';
import '../../services/navigation_service.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final GlobalKey<ScaffoldState> scaffoldKey;
  const DrawerItem({super.key,required this.scaffoldKey, required this.title, required this.navigationPath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        scaffoldKey.currentState!.closeDrawer();
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
        child: Text(
          title,
          style: GoogleFonts.openSans(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
