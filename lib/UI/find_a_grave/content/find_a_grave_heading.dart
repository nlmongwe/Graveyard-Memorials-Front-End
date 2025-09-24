import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FindAGraveHeading extends StatelessWidget {
  const FindAGraveHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      late TextAlign textAlignment;
      late double mainTextSize;

      switch (sizingInfo.deviceScreenType)
      {
        case DeviceScreenType.mobile:
          textAlignment = TextAlign.left;
          mainTextSize = 45;
          break;
        case DeviceScreenType.tablet:
          textAlignment = TextAlign.center;
          mainTextSize = 55;
          break;
        default:
          textAlignment = TextAlign.center;
          mainTextSize = 65;
      }
      return Container(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 50),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("/images/heading_bg.jpg"),
                fit: BoxFit.cover)),
        child: Text(
            "Find A Grave",
          textAlign: textAlignment,
          style: GoogleFonts.openSans(
              fontSize: mainTextSize,
              fontWeight: FontWeight.bold,
              color: Colors.orange),
        ),
      );
    });
  }
}
