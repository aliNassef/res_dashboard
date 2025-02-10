import 'package:flutter/material.dart';
import 'package:res_dashboard/core/extensions/spacers.dart';
import 'package:res_dashboard/core/utils/app_styles.dart';
import 'package:res_dashboard/widgets/custom_background_container.dart';
import '../core/utils/app_color.dart';
import 'latest_transaction_list_items.dart';
import 'quick_invoice_form.dart';
import 'quick_invoice_header.dart';

class QucikInvoiceFeature extends StatelessWidget {
  const QucikInvoiceFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 24,
      child: QuickInvoice(),
    );
  }
}

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        24.hs,
        Text(
          'Latest Transaction',
          style: AppStyles.medium16(context).copyWith(
            color: AppColors.primaryDark,
          ),
        ),
        12.hs,
        SizedBox(
          height: 80,
          child: LatestTransactionListItems(),
        ),
        24.hs,
        Divider(
          color: AppColors.lightGrey,
        ),
        24.hs,
        QuickInvoiceForm(),
        24.hs,
      ],
    );
  }
}
