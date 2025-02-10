
import 'package:flutter/material.dart';

import '../core/utils/app_color.dart';
import '../core/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.semiBold20(context).copyWith(
            color: AppColors.primaryDark,
          ),
        ),
        CircleAvatar(
          radius: 24,
          backgroundColor: AppColors.backgroundLight,
          child: Icon(
            Icons.add,
            color: AppColors.primaryLight,
          ),
        )
      ],
    );
  }
}
