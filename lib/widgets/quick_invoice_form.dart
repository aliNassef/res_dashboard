import 'package:flutter/material.dart';
import 'package:res_dashboard/core/extensions/spacers.dart';
import 'package:res_dashboard/core/utils/app_color.dart';
import 'package:res_dashboard/widgets/custom_elevated_button.dart';

import 'title_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleField(
                title: 'Customer name',
                titleField: 'Type customer name',
              ),
            ),
            16.ws,
            Expanded(
              child: TitleField(
                title: 'Customer Email',
                titleField: 'Type customer email',
              ),
            ),
          ],
        ),
        24.hs,
        Row(
          children: [
            Expanded(
              child: TitleField(
                title: 'Item name',
                titleField: 'Type customer name',
              ),
            ),
            16.ws,
            Expanded(
              child: TitleField(
                title: 'Item mount',
                titleField: 'USD',
              ),
            ),
          ],
        ),
        24.hs,
        Row(
          children: [
            Expanded(
              child: CustomElevatedButton(
                text: 'Add more details',
                backgroundColor: AppColors.white,
                textColor: AppColors.primaryLight,
              ),
            ),
            16.ws,
            Expanded(
              child: CustomElevatedButton(
                text: 'Send Money',
                backgroundColor: AppColors.primaryLight,
                textColor: AppColors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
