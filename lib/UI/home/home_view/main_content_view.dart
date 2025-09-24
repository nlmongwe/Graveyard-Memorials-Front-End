import 'package:flutter/material.dart';


import '../home_content/body_paragraphs.dart';
import '../home_content/home_body_heading.dart';
import '../home_content/home_heading.dart';

class MainContentView extends StatelessWidget {
  const MainContentView({super.key});

  @override
  Widget build(BuildContext context) {
    double sectionSpacing = 10.00;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("/images/body_bg.jpg"),
              fit: BoxFit.cover,
              opacity: 0.1)),
      child: Align(
        alignment: Alignment.topLeft,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const HomeHeading(),
              SizedBox(
                height: sectionSpacing,
              ),
              const HomeBodyHeading(),
              const SizedBox(height: 30),
              const BodyParagraphs()
            ],
          ),
        ),
      ),
    );
  }
}


