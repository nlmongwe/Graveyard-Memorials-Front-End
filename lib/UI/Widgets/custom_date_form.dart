import 'package:flutter/material.dart';


class CustomDateForm extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Future<void> Function() function;
  final String? Function(String?)? validator;
  const CustomDateForm({super.key,
    required this.controller,
    required this.hintText,
    required this.function,
    required this.validator
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: true,
      decoration: InputDecoration(label: Text(hintText)),
      onTap:function,
      validator: validator
    );
  }
}
