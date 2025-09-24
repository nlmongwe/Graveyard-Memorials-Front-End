import 'package:flutter/material.dart';
import 'package:web_project/UI/home/layout/layout.dart';

import 'UI/home/home_view/home_view.dart';


class MyWebApp extends StatelessWidget {
  const MyWebApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    ),
    home: const Layout(),
    );
  }
}
