import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';


class CallToActionButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback function;
  const CallToActionButton({super.key, required this.buttonName, required this.function});

  @override
  Widget build(BuildContext context) {
    late double width;
    return ResponsiveBuilder( builder: (context, sizingInfo){

      switch(sizingInfo.deviceScreenType){
        case DeviceScreenType.mobile:
          width = 150;
          break;
        case DeviceScreenType.tablet:
          width = 300;
          break;
        default:
          width = 600;
          break;
      }

      return GestureDetector(
        onTap: function,
        child: Container(
          height: 50,
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green
          ),
          child: Center(
            child: Text(buttonName,
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black),),
          ),
        ),
      );
    });
  }
}
