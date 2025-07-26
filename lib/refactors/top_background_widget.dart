import 'package:auth_ui/refactors/login_form.dart';
import 'package:auth_ui/widgets/header_widget.dart';
import 'package:auth_ui/widgets/terms_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopBackgroundWidget extends StatelessWidget {
  const TopBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 0.75.sh,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Rectangle_top.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
        child: TopBackgroundBody(),
      ),
    );
  }
}

class TopBackgroundBody extends StatelessWidget {
  const TopBackgroundBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //welcome
        HeaderWidget(),
        SizedBox(height: 20.h),

        LoginForm(),
        SizedBox(height: 8.h),

        TermsCheckbox(
          value: false,
          onChanged: (val) => {},
          onTermsTap: () {},
          onPrivacyTap: () {},
        ),
      ],
    );
  }
}
