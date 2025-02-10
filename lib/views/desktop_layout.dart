import 'package:flutter/material.dart';
import 'package:res_dashboard/core/extensions/spacers.dart';
import '../widgets/all_expenisis_and_quick_invoice_section.dart';
import '../widgets/card_section_and_transactions.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/income_feature.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        20.ws,
        Expanded(
          flex: 5,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: AllExpensisAndQuickInvoiceSection(),
                      ),
                    ),
                    20.ws,
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          CardSectionAndTransaction(),
                          Expanded(child: IncomeFeature()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
