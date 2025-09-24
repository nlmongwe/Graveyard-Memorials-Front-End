import 'package:flutter/material.dart';
import 'package:web_project/Utils/extensions.dart';
import 'package:web_project/models/admin_user.dart';

import '../../Widgets/call_to_action_button.dart';
import '../../Widgets/custom_form.dart';
import 'admin_home.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  final _loginFormKey = GlobalKey<FormState>();
  late String _email;
  late String _password;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Form(
        key: _loginFormKey,
        child:  Column(
          children: [
             CustomForm(
              hintText: "Email",
              obscureText: false,
              validator: _validateEmail,
               onSaved: (value) => _email = value!,
            ),
             CustomForm(
              hintText: "Password",
              obscureText: true,
              validator: _validatePassword,
               onSaved: (value) => _password = value!,
            ),
            const SizedBox(
              height: 80,
            ),
            CallToActionButton(buttonName: "Submit", function: _navigateToAdminHomePage,)
          ],
        ),

      ),
    );
  }

  void _navigateToAdminHomePage() {
    if(_loginFormKey.currentState!.validate()){
      _loginFormKey.currentState!.save();
      final AdminUser adminUser = AdminUser(username: _email, password: _password);
      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  AdminHome(adminUser: adminUser)));
    }
  }

  String? _validateEmail(String? value){
    if(value == null){
      return 'Email is required';
    }
    if(!value.isValidEmail){
      return 'Enter a valid Email';
    }
    return null;
  }

  String? _validatePassword(String? value){
    if(value == null){
      return 'Password is required';
    }
    if(!value.isValidPassword){
      return 'Minimum 8 characters total.';
    }
    return null;
  }

}

