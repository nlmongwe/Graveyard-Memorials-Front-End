import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/container_with_blur.dart';

class HomeBodyHeading extends StatelessWidget {
  const HomeBodyHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
        child: Center(
          child: ContainerWithBlur(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Welcome heading
                Text(
                  "Welcome to the graveyard memorials.",
                  softWrap: true,
                  style: GoogleFonts.openSans(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                //Sub heading
                Text(
                  "We offer all funeral customs, but most importantly we take care of the people who are putting their lives in line every day serving the nation",
                  softWrap: true,
                  style: GoogleFonts.openSans(
                      fontSize: 18,
                      color: Colors.black),
                )
              ],
            ),
          ),
        ));
  }
}


