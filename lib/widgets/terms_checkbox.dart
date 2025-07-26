import 'package:auth_ui/constants/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsCheckbox extends StatelessWidget {
  final bool value;
  final void Function(bool?) onChanged;
  final VoidCallback onTermsTap;
  final VoidCallback onPrivacyTap;

  const TermsCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    required this.onTermsTap,
    required this.onPrivacyTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Transform.scale(
          scale: 0.9,
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: BorderSide(color: AppColors.textSecondary),
            ),
          ),
        ),
        Flexible(
          child: RichText(
            text: TextSpan(
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: AppColors.textSecondary),
              children: [
                TextSpan(
                  text: "Terms ",
                  style: GoogleFonts.titilliumWeb(
                    fontSize: 14.sp,
                    color: AppColors.backgrounddark,
                    fontWeight: FontWeight.w500,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = onTermsTap,
                ),
                TextSpan(
                  text: " & ",
                  style: GoogleFonts.titilliumWeb(
                    fontSize: 14.sp,
                    color: AppColors.textSecondary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: "Privacy Policy",
                  style: GoogleFonts.titilliumWeb(
                    fontSize: 14.sp,
                    color: AppColors.backgrounddark,
                    fontWeight: FontWeight.w500,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = onPrivacyTap,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
