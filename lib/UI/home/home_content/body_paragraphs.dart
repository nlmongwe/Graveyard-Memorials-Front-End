import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_project/UI/Widgets/container_with_blur.dart';

import '../../Widgets/paragraph_insert.dart';
import '../Widgets/paragraph_insert.dart';

class BodyParagraphs extends StatelessWidget {
  const BodyParagraphs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContainerWithBlur(child: ParagraphInsert(text: paragraphOne(), imageLocation: "/images/p1.png",)),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }

  Text paragraphOne() {
    return  Text(
        "Protect yourself and your family with the funeral undertaker which offers cover that is giving dignified and personalised funerals to our national heroes which are putting their lives in line everyday by protecting and looking after our lives.",
      softWrap: true,
      style: GoogleFonts.openSans(
            fontSize: 18,
            color: Colors.black),
        );
  }
}
