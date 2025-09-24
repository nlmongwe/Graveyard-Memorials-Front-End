import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeHeading extends StatelessWidget {
  const HomeHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      late TextAlign textAlignment;
      late double mainTextSize;
      late double secondaryTextSize;

      switch (sizingInfo.deviceScreenType)
      {
        case DeviceScreenType.mobile:
          textAlignment = TextAlign.left;
          mainTextSize = 45;
          secondaryTextSize = 20;
          break;
        case DeviceScreenType.tablet:
          textAlignment = TextAlign.center;
          mainTextSize = 55;
          secondaryTextSize = 30;
          break;
        default:
          textAlignment = TextAlign.center;
          mainTextSize = 65;
          secondaryTextSize = 40;
      }

      return Container(
          padding: const EdgeInsets.fromLTRB(10, 50, 10, 50),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("/images/heading_bg.jpg"),
                  fit: BoxFit.cover)),
          child: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Heading
                Text(
                  "Graveyard Memorials",
                  textAlign: textAlignment,
                  style: GoogleFonts.openSans(
                      fontSize: mainTextSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
                //Sub heading
                Text(
                  "We will always remember you!",
                  textAlign: textAlignment,
                  style: GoogleFonts.openSans(
                      fontSize: secondaryTextSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                )
              ],
            ),
          ));
    });
  }
}
