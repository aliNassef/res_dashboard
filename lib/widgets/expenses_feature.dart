import 'package:flutter/material.dart';
import 'package:res_dashboard/core/extensions/spacers.dart';
import 'custom_background_container.dart';
import 'expenses_header.dart';
import 'expensis_items.dart';

class ExpensesFeature extends StatelessWidget {
  const ExpensesFeature({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 20,
      child: Column(
        children: [
          ExpensesHeader(),
          16.hs,
          ExpensisItems(),
        ],
      ),
    );
  }
}
