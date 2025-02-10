
import 'package:flutter/material.dart';

import '../core/utils/app_color.dart';
import '../core/utils/app_styles.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.semiBold20(context).copyWith(
            color: AppColors.primaryDark,
          ),
        ),
        Text(
          'See all',
          style: AppStyles.medium16(context).copyWith(
            color: AppColors.primaryLight,
          ),
        ),
      ],
    );
  }
}
