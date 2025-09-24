import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(10, 10, 0, 15),
      decoration: const BoxDecoration(
        color: Colors.green
      ),
      child: Center(
        child: Text(
          "Graveyard Memorials",
          style: GoogleFonts.openSans(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.orange),
        ),
      ),
    );
  }
}
