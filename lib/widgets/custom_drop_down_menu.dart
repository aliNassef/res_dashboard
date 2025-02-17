import 'package:flutter/material.dart';
import '../core/utils/app_color.dart';
import '../core/utils/app_styles.dart';

class CustomDropDownMenu extends StatelessWidget {
  const CustomDropDownMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem> items = [
      DropdownMenuItem(
        value: 'This Week',
        child: Text('this week'),
      ),
      DropdownMenuItem(
        value: 'This Month',
        child: Text('this month'),
      ),
      DropdownMenuItem(
        value: 'Monthly',
        child: Text('Monthly'),
      ),
    ];
    return DropdownButton(
      style: AppStyles.medium16(context).copyWith(color: AppColors.primaryDark),
      hint: Text(
        'Monthly',
        style:
            AppStyles.medium16(context).copyWith(color: AppColors.primaryDark),
      ),
      items: items,
      onChanged: (val) {},
      borderRadius: BorderRadius.circular(12),
      value: 'Monthly',
    );
  }
}
