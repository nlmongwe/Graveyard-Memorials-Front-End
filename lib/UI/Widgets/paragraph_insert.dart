import 'package:flutter/material.dart';

class ParagraphInsert extends StatelessWidget {
  final Text text;
  final String? imageLocation;

  const ParagraphInsert({super.key, required this.text, this.imageLocation});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: imageLocation == null
          ? Expanded(child: text)
          : Row(
        children: <Widget>[
          Container(
            decoration:  BoxDecoration(
                image: DecorationImage(image: AssetImage(imageLocation!))),
            height: 200,
            width: 250,
          ),
          const SizedBox(width: 15,),
          Expanded(child: text)
        ],
      ),
    );
  }
}
