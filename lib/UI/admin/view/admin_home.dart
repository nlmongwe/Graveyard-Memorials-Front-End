import 'package:flutter/material.dart';
import 'package:web_project/models/admin_user.dart';

class AdminHome extends StatelessWidget {
  final AdminUser adminUser;
  const AdminHome({super.key, required this.adminUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.00),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Text(adminUser.username),
          ),
          const SizedBox(
            height: 30,
          )
        ],
    ),
    );
  }
}
