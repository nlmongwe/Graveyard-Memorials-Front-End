import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_project/loactor.dart';
import '../../services/navigation_service.dart';

class NavigationBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavigationBarItem(this.title, this.navigationPath, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(
          title,
          style: GoogleFonts.openSans(
            fontSize: 20,
          )
      ),
    );
  }
}