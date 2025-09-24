import 'package:flutter/material.dart';

class ContainerWithBlur extends StatelessWidget {
  final Widget child;
  const ContainerWithBlur({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white10.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}