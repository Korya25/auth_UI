import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomBackgroundWidget extends StatelessWidget {
  const BottomBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/Rectangle_buttom.png',
      fit: BoxFit.cover,
      width: double.infinity,
      height: 0.58.sh,
    );
  }
}
