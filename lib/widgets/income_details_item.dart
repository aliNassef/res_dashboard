
import 'package:flutter/material.dart';

import '../core/utils/app_color.dart';
import '../core/utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({
    super.key,
    required this.circleColor,
    required this.title,
    required this.percent,
  });
  final Color circleColor;
  final double percent;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 6,
        backgroundColor: circleColor,
      ),
      title: Text(
        title,
        style: AppStyles.regular16(context).copyWith(
          color: AppColors.primaryDark,
        ),
      ),
      trailing: Text(
        '$percent%',
        style: AppStyles.medium16(context).copyWith(
          color: AppColors.secondaryBlue,
        ),
      ),
    );
  }
}
