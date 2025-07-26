import 'package:auth_ui/widgets/custom_button.dart';
import 'package:auth_ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: 20.h,
        children: [
          CustomTextField(
            hintText: 'Email Address',
            prefixIcon: FontAwesomeIcons.envelope,
          ),
          CustomTextField(
            prefixIcon: FontAwesomeIcons.lock,
            isPassword: true,
            hintText: 'Password',
          ),
        ],
      ),
    );
  }
}
