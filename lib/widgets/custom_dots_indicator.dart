
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../core/utils/app_color.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({super.key, required this.position});
  final int position;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: position,
      decorator: DotsDecorator(
        activeColor: AppColors.primaryLight,
        color: AppColors.lightGrey2,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        activeSize: Size(32, 8),
        size: Size(8, 8),
        spacing: EdgeInsets.only(right: 8),
      ),
    );
  }
}
