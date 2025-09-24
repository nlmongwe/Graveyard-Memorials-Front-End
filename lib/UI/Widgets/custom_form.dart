import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  final bool obscureText;
  final String hintText;
  final String? Function(String?)? validator;
  final Function(String?) onSaved;
  const CustomForm(
      {super.key,
        required this.obscureText,
        required this.hintText,
        required this.validator,
        required this.onSaved
      });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(label: Text(hintText)),
      validator: validator,
      onSaved: onSaved,
    );
  }
}
