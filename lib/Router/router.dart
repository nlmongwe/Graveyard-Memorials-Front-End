import 'package:flutter/material.dart';
import 'package:web_project/Router/route_names.dart';
import '../UI/admin/view/admin_layout.dart';
import '../UI/find_a_grave/views/find_a_grave_layout.dart';
import '../UI/home/home_view/home_view.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(const HomeView());
    case FindGrave:
      return _getPageRoute(const FindAGraveLayout());
    case Admin:
      return _getPageRoute(const AdminLayout());
    default:
      return null;
  }
}

Route _getPageRoute(Widget child) {
  return _FadeRoute(child:  child);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({required this.child})
      : super(
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) =>
                child,
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ));
}
