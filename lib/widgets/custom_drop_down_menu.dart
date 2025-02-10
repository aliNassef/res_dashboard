

import 'package:flutter/material.dart';
import 'package:res_dashboard/core/extensions/media_query.dart';

import '../core/utils/app_color.dart';
import '../core/utils/app_styles.dart';

class CustomDropDownMenu extends StatelessWidget {
  const CustomDropDownMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      menuHeight: 48,
      textStyle:
          AppStyles.medium16(context).copyWith(color: AppColors.primaryDark),
      width: context.width * 0.1,
      hintText: 'Monthly',
      menuStyle: MenuStyle(
        shadowColor: WidgetStatePropertyAll(
          Colors.transparent,
        ),
        backgroundColor: WidgetStatePropertyAll(Colors.white),
        side: WidgetStatePropertyAll(
          BorderSide(
            style: BorderStyle.solid,
            color: Color(0xffF1F1F1),
          ),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            side: BorderSide(
              color: Color(0xffF1F1F1),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      dropdownMenuEntries: [
        DropdownMenuEntry(
          value: 'This Week',
          label: 'This Week',
        ),
        DropdownMenuEntry(
          value: 'This Month',
          label: 'This Month',
        ),
      ],
    );
  }
}
