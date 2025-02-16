import 'package:flutter/material.dart';
import 'package:res_dashboard/core/extensions/spacers.dart';
import 'package:res_dashboard/core/utils/size_config.dart';
import 'package:res_dashboard/widgets/detailed_income_chart.dart';
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
          IncomeSeactionBody(),
        ],
      ),
    );
  }
}

class IncomeSeactionBody extends StatelessWidget {
  const IncomeSeactionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return width >= SizeConfig.desktop && width < 1750
        ? Expanded(
            child: DetailedIncomeChart(),
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              ),
            ],
          );
  }
}
