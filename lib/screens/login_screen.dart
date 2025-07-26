import 'package:auth_ui/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animate_do/animate_do.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.backgroundLight, AppColors.backgrounddark],
          ),
        ),
        child: const LoginBody(),
      ),
    );
  }
}

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: FadeInDown(
            duration: const Duration(milliseconds: 1000),
            child: Image.asset(
              'assets/Rectangle_top.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        ),

        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: FadeInUp(
            duration: const Duration(milliseconds: 1000),
            child: Image.asset(
              'assets/Rectangle_buttom.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        ),
      ],
    );
  }
}
