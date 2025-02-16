import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../core/utils/app_color.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
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
          showTitle: false,
          color: AppColors.secondaryBlue,
          value: 40,
          radius: currentChart == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          color: AppColors.primaryLight2,
          value: 25,
          showTitle: false,
          radius: currentChart == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          showTitle: false,
          color: AppColors.primaryDark,
          value: 20,
          radius: currentChart == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          color: AppColors.lightGrey,
          showTitle: false,
          value: 22,
          radius: currentChart == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
