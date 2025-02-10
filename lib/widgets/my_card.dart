import 'package:flutter/material.dart';
import 'package:res_dashboard/core/utils/app_images.dart';

import '../core/utils/app_color.dart';
import '../core/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.primaryLight,
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              Assets.imagesBackgroundCard,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Name card',
                style: AppStyles.semiBold16(context).copyWith(
                  color: AppColors.white,
                ),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyles.medium20(context).copyWith(
                  color: AppColors.white,
                ),
              ),
              trailing: Icon(Icons.image),
            ),
            Spacer(),
            Text(
              '0918 8124 0042 8129',
              style: AppStyles.semiBold24(context).copyWith(
                color: AppColors.white,
              ),
              textAlign: TextAlign.end,
            ),
            Text(
              '12/20 - 124',
              style: AppStyles.semiBold16(context).copyWith(
                color: AppColors.white,
              ),
              textAlign: TextAlign.end,
            ),
          ],
        ),
      ),
    );
  }
}
