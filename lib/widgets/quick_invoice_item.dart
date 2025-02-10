import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:res_dashboard/models/user_info_model.dart';

import '../core/utils/app_color.dart';
import '../core/utils/app_styles.dart';

class LatestTransactionItem extends StatelessWidget {
  const LatestTransactionItem({super.key, required this.user});
  final UserInfoModel user;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.backgroundLight,
      ),
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(
            user.image,
          ),
          title: Text(
            user.title,
            style: AppStyles.semiBold16(context).copyWith(
              color: AppColors.primaryDark,
            ),
          ),
          subtitle: FittedBox(
            child: Text(
              user.subTitle,
              style: AppStyles.regular12(context).copyWith(
                color: AppColors.grey,
              ),
            ),
          ),
          contentPadding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
