import 'package:auth_ui/constants/app_colors.dart';
import 'package:auth_ui/widgets/custom_button.dart';
import 'package:auth_ui/widgets/custom_text_button.dart';
import 'package:auth_ui/widgets/finger_print_button.dart';
import 'package:auth_ui/widgets/social_connect_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomBackgroundWidget extends StatelessWidget {
  const BottomBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.58.sh,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Rectangle_buttom.png'),

          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 100.h),
        child: BottomBackgroundBody(),
      ),
    );
  }
}

class BottomBackgroundBody extends StatelessWidget {
  const BottomBackgroundBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextButton(),
        SizedBox(height: 70.h),
        Row(
          spacing: 30.w,
          children: [
            CustomButton(
              width: 0.2.sh,
              onPressed: () {},
              text: 'Login',
              backgroundColor: AppColors.backgrounddark,
            ),
            CustomButton(
              width: 0.2.sh,

              onPressed: () {},
              text: 'Register',
              textColor: AppColors.backgrounddark,
              backgroundColor: AppColors.bakground,
            ),
          ],
        ),
        SizedBox(height: 30.h),

        //
        FingerprintButton(),
        SizedBox(height: 15.h),

        SocialConnectWidget(),
      ],
    );
  }
}
