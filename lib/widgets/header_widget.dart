import 'package:auth_ui/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String termsText;
  final VoidCallback? onTermsTap;

  const HeaderWidget({
    super.key,
    this.title = "Welcome",
    this.subtitle = "By signing in you are agreeing our",
    this.termsText = "Term and privacy policy",
    this.onTermsTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),

        // Illustration placeholder
        Image.asset('assets/login_image.png', fit: BoxFit.cover),

        SizedBox(height: 24.h),
        Text(
          title,
          style: GoogleFonts.titilliumWeb(
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          subtitle,
          style: GoogleFonts.titilliumWeb(
            fontSize: 16.sp,

            color: AppColors.textSecondary,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
