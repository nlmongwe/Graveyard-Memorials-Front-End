import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../Widgets/custom_heading.dart';
import '../content/find_a_grave_heading.dart';
import 'find_a_grave_desktop_view.dart';
import 'find_a_grave_mobile_view.dart';
import 'find_a_grave_tablet_view.dart';

class FindAGraveLayout extends StatelessWidget {
  const FindAGraveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("/images/body_bg.jpg"),
                fit: BoxFit.cover,
                opacity: 0.1)),
        child:  SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CustomHeading(title: 'Find A Grave',),
              ScreenTypeLayout.builder(
                  mobile: (BuildContext context) => const FindAGraveMobileView(),
                  tablet: (BuildContext context) => const FindAGraveTabletView(),
                  desktop: (BuildContext context) => const FindAGraveDesktopView(),

              )
            ],
          ),
        ),
      );
    });
  }
}
