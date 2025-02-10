import 'package:flutter/material.dart';
import '../core/utils/app_color.dart';
import '../models/chart_model.dart';
import 'income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    ChartModel(
      title: 'Design service',
      percent: 40.0,
      color: AppColors.secondaryBlue,
    ),
    ChartModel(
      title: 'Design product',
      percent: 25.0,
      color: AppColors.primaryLight2,
    ),
    ChartModel(
      title: 'Product royalti',
      percent: 20.0,
      color: AppColors.primaryDark,
    ),
    ChartModel(
      title: 'Other',
      percent: 22.0,
      color: AppColors.lightGrey,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (e) => IncomeDetailsItem(
                circleColor: e.color, title: e.title, percent: e.percent),
          )
          .toList(),
    );
  }
}
