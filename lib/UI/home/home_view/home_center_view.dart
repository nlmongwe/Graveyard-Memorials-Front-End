import 'package:flutter/cupertino.dart';
class HomeCenterView extends StatelessWidget {
  final Widget child;
  const HomeCenterView({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
      child: child,
    );
  }
}
