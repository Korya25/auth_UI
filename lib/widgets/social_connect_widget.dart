import 'package:auth_ui/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialConnectWidget extends StatelessWidget {
  final VoidCallback? onGithubTap;
  final VoidCallback? onGoogleTap;
  final VoidCallback? onFacebookTap;
  final String connectText;
  final double iconSize;
  final double spacing;

  const SocialConnectWidget({
    super.key,
    this.onGithubTap,
    this.onGoogleTap,
    this.onFacebookTap,
    this.connectText = "or connect with",
    this.iconSize = 33,
    this.spacing = 22,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> _socialButtons = [
      {
        "icon": FontAwesomeIcons.facebookF,
        "color": const Color(0xFF4267B2),
        "onTap": onFacebookTap,
      },
      {
        "icon": FontAwesomeIcons.google,
        "color": const Color(0xFFDB4437),
        "onTap": onGoogleTap,
      },
      {
        "icon": FontAwesomeIcons.github,
        "color": const Color(0xFF333333),
        "onTap": onGithubTap,
      },
    ];

    return Column(
      children: [
        Text(
          connectText,
          style: GoogleFonts.titilliumWeb(
            fontSize: 14.sp,
            color: AppColors.textSecondary,
          ),
        ),
        SizedBox(height: spacing.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _socialButtons
              .map(
                (item) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: _SocialButton(
                    icon: item['icon'],
                    backgroundColor: item['color'],
                    onTap: item['onTap'],
                    width: iconSize,
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class _SocialButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;
  final Color backgroundColor;
  final double width;

  const _SocialButton({
    required this.icon,
    this.onTap,
    required this.backgroundColor,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        customBorder: const CircleBorder(),
        child: Container(
          width: width.w,
          height: width.w,
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.white, size: 0.65 * width.w),
        ),
      ),
    );
  }
}
