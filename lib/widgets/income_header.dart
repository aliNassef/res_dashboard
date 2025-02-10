import 'package:flutter/material.dart';

import '../core/utils/app_color.dart';
import '../core/utils/app_styles.dart';
import 'custom_drop_down_menu.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppStyles.semiBold20(context)
              .copyWith(color: AppColors.primaryDark),
        ),
        CustomDropDownMenu(),
      ],
    );
  }
}
