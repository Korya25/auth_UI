import 'package:auth_ui/constants/app_colors.dart';
import 'package:auth_ui/refactors/bottom_background_widget.dart';
import 'package:auth_ui/refactors/top_background_widget.dart';
import 'package:flutter/material.dart';
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: const LoginBody(),
        ),
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
            duration: const Duration(seconds: 1),
            child: TopBackgroundWidget(),
          ),
        ),

        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: FadeInUp(
            duration: const Duration(seconds: 1),
            child: BottomBackgroundWidget(),
          ),
        ),
      ],
    );
  }
}
