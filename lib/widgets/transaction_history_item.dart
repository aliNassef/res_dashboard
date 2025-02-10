
import 'package:flutter/material.dart';

import '../core/utils/app_color.dart';
import '../core/utils/app_styles.dart';
import '../models/transaction_history_item_model.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({
    super.key,
    required this.transactionHistoryItemModel,
  });
  final TransactionHistoryItemModel transactionHistoryItemModel;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.backgroundLight,
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        title: Text(
          transactionHistoryItemModel.title,
          style: AppStyles.semiBold16(context).copyWith(
            color: AppColors.primaryDark,
          ),
        ),
        subtitle: Text(
          transactionHistoryItemModel.subTitle,
          style: AppStyles.regular16(context).copyWith(
            color: AppColors.grey,
          ),
        ),
        trailing: Text(
          transactionHistoryItemModel.price,
          style: AppStyles.semiBold20(context).copyWith(
            color: transactionHistoryItemModel.priceColor,
          ),
        ),
      ),
    );
  }
}
