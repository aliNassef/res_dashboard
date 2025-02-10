
import 'package:flutter/material.dart';
import 'package:res_dashboard/core/extensions/spacers.dart';

import '../core/utils/app_color.dart';
import '../core/utils/app_styles.dart';
import 'custom_text_form_field.dart';

class TitleField extends StatelessWidget {
  const TitleField({
    super.key,
    required this.title,
    required this.titleField,
  });
  final String title;
  final String titleField;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.medium16(context).copyWith(
            color: AppColors.primaryDark,
          ),
        ),
        12.hs,
        CustomTextFormField(
          hintText: titleField,
        ),
      ],
    );
  }
}
