import 'package:flutter/material.dart';
import 'package:res_dashboard/core/extensions/spacers.dart';
import 'package:res_dashboard/widgets/income_chart.dart';
import 'custom_background_container.dart';
import 'income_details.dart';
import 'income_header.dart';

class IncomeFeature extends StatelessWidget {
  const IncomeFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 24,
      child: Column(
        children: [
          IncomeHeader(),
          12.hs,
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: IncomeChart(),
                ),
                Expanded(child: IncomeDetails()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
