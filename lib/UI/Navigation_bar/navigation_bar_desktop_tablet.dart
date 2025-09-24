import 'package:flutter/material.dart';

import 'app_logo.dart';
import 'navigation_items.dart';

class NavigationBarDesktopTablet extends StatelessWidget {
  const NavigationBarDesktopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        height:180,
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Hero(
            tag: "app-logo-screen-resize",
              child: AppLogo()
          ),
          NavigationItems()
        ],
    ));
  }
}
