import 'package:flutter/material.dart';
import 'package:res_dashboard/core/extensions/spacers.dart';

import 'expenses_feature.dart';
import 'qucik_invoice_feature.dart';

class AllExpensisAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensisAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 40.hs,
        ExpensesFeature(),
        24.hs,
        QucikInvoiceFeature(),
      ],
    );
  }
}
