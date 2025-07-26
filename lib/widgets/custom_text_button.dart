import 'package:auth_ui/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  final TextStyle? style;
  final AlignmentGeometry? alignmentGeometry;

  const CustomTextButton({
    super.key,
    this.onTap,
    this.title = "Forgot password",
    this.style,
    this.alignmentGeometry,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignmentGeometry ?? Alignment.centerRight,
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          title,
          style:
              style ??
              GoogleFonts.titilliumWeb(
                fontSize: 14.sp,
                color: AppColors.primary,
              ),
        ),
      ),
    );
  }
}
