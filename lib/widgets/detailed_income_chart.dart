import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:res_dashboard/core/utils/app_styles.dart';

import '../core/utils/app_color.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChart();
}

class _DetailedIncomeChart extends State<DetailedIncomeChart> {
  int currentChart = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        duration: Duration(
          milliseconds: 300,
        ),
        curve: Curves.bounceInOut,
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pitouchresponse) {
          currentChart = pitouchresponse!.touchedSection!.touchedSectionIndex;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      centerSpaceColor: AppColors.white,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: currentChart == 0 ? 1.5 : null,
          title: currentChart == 0 ? 'Design service' : '40%',
          titleStyle: AppStyles.semiBold16(context).copyWith(
            color: currentChart == 0 ? null : AppColors.white,
          ),
          color: AppColors.secondaryBlue,
          value: 40,
          radius: currentChart == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: currentChart == 1 ? 2.2 : null,
          title: currentChart == 1 ? 'Design product' : '25%',
          titleStyle: AppStyles.semiBold16(context).copyWith(
            color: currentChart == 1 ? null : AppColors.white,
          ),
          color: AppColors.primaryLight2,
          value: 25,
          radius: currentChart == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: currentChart == 2 ? 1.5 : null,
          title: currentChart == 2 ? 'Product royalti' : "20%",
          titleStyle: AppStyles.semiBold16(context).copyWith(
            color: currentChart == 2 ? null : AppColors.white,
          ),
          color: AppColors.primaryDark,
          value: 20,
          radius: currentChart == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: currentChart == 3 ? 1.5 : null,
          title: currentChart == 3 ? 'Other' : "22%",
          titleStyle: AppStyles.semiBold16(context).copyWith(
            color: currentChart == 3 ? null : AppColors.white,
          ),
          color: AppColors.grey2,
          value: 22,
          radius: currentChart == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
