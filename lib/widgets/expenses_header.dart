
import 'package:flutter/material.dart';

import '../core/utils/app_color.dart';
import '../core/utils/app_styles.dart';
import 'custom_drop_down_menu.dart';

class ExpensesHeader extends StatelessWidget {
  const ExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppStyles.semiBold16(context)
              .copyWith(color: AppColors.primaryDark),
        ),
        CustomDropDownMenu(),
      ],
    );
  }
}
