import 'package:flutter/material.dart';
import 'package:res_dashboard/core/extensions/spacers.dart';
import '../core/utils/app_color.dart';
import '../core/utils/app_styles.dart';
import 'cards_page_view.dart';
import 'custom_background_container.dart';
import 'transaction_history_list_items.dart';
import 'transaction_history_section.dart';

class CardSectionAndTransaction extends StatelessWidget {
  const CardSectionAndTransaction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My card',
            style: AppStyles.semiBold20(context).copyWith(
              color: AppColors.primaryDark,
            ),
          ),
          20.hs,
          CardsPageView(),
          Divider(
            color: AppColors.lightGrey,
            height: 40,
          ),
          TransactionHistorySection(),
          20.hs,
          Text(
            '13 April 2022',
            style: AppStyles.medium16(context).copyWith(color: AppColors.grey),
          ),
          16.hs,
          TransactionHistoryListItems(),
        ],
      ),
    );
  }
}
