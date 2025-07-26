import 'package:auth_ui/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class FingerprintButton extends StatelessWidget {
  final VoidCallback? onTap;
  final double size;

  const FingerprintButton({super.key, this.onTap, this.size = 55});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      children: [
        Text(
          'Login with Fingerprint',
          style: GoogleFonts.titilliumWeb(
            fontSize: 14.sp,
            color: AppColors.textSecondary,
          ),
        ),

        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            customBorder: const CircleBorder(),
            child: Container(
              width: size.w,
              height: size.w,
              decoration: BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
              ),
              child: Icon(
                FontAwesomeIcons.fingerprint,
                color: Colors.white,
                size: 0.65 * size.w,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
