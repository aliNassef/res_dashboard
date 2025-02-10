import 'package:flutter/material.dart';
import 'package:res_dashboard/core/extensions/spacers.dart';
import '../widgets/all_expenisis_and_quick_invoice_section.dart';
import '../widgets/card_section_and_transactions.dart';
import '../widgets/income_feature.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensisAndQuickInvoiceSection(),
          24.hs,
          CardSectionAndTransaction(),
          24.hs,
          IncomeFeature(),
        ],
      ),
    );
  }
}
