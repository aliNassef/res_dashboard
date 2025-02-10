import 'package:flutter/material.dart';
import '../core/utils/app_color.dart';
import '../models/transaction_history_item_model.dart';
import 'transaction_history_item.dart';

class TransactionHistoryListItems extends StatelessWidget {
  const TransactionHistoryListItems({super.key});
  static const transactionHistoryItemModel = [
    TransactionHistoryItemModel(
      price: r'$20,129',
      priceColor: AppColors.accentRed,
      title: 'Cash Withdrawal',
      subTitle: '13 Apr, 2022 ',
    ),
    TransactionHistoryItemModel(
      price: r'$2,000',
      priceColor: AppColors.accentGreen,
      title: 'Landing Page project',
      subTitle: '13 Apr, 2022 at 3:30 PM',
    ),
    TransactionHistoryItemModel(
      price: r'$20,129',
      priceColor: AppColors.accentGreen,
      title: 'Juni Mobile App project',
      subTitle: '13 Apr, 2022 at 3:30 PM',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: transactionHistoryItemModel
          .map((e) => TransactionHistoryItem(transactionHistoryItemModel: e))
          .toList(),
    );
  }
}
