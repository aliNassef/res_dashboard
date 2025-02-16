import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:res_dashboard/core/extensions/spacers.dart';
import 'package:res_dashboard/core/utils/app_images.dart';
import 'package:res_dashboard/models/expensis_model.dart';

import '../core/utils/app_color.dart';
import '../core/utils/app_styles.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({
    super.key,
    required this.expensis,
    required this.isSelected,
  });
  final ExpensisModel expensis;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isSelected ? AppColors.primaryLight : Colors.white,
          border: Border.all(
            color: isSelected ? AppColors.primaryLight : AppColors.lightGrey,
            width: 1,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: isSelected
                      ? Color(0xff60bef3)
                      : AppColors.backgroundLight,
                  child: SvgPicture.asset(
                    Assets.imagesBalanceIcon,
                    colorFilter: ColorFilter.mode(
                      isSelected ? AppColors.white : AppColors.primaryLight,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                size: 40,
                color: isSelected ? AppColors.white : AppColors.primaryDark,
              )
            ],
          ),
          34.hs,
          FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(
              'Balance',
              style: AppStyles.semiBold16(context).copyWith(
                color: isSelected ? AppColors.white : AppColors.primaryDark,
              ),
            ),
          ),
          8.hs,
          FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(
              'April 2022',
              style: AppStyles.regular14(context).copyWith(
                color: isSelected ? AppColors.backgroundLight : AppColors.grey,
              ),
            ),
          ),
          16.hs,
          FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(
              '\$20,129',
              style: AppStyles.semiBold24(context).copyWith(
                color: isSelected ? AppColors.white : AppColors.primaryLight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
