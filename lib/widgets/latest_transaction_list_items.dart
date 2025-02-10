import 'package:flutter/material.dart';
import 'package:res_dashboard/core/extensions/spacers.dart';

import '../models/user_info_model.dart';
import 'quick_invoice_item.dart';

class LatestTransactionListItems extends StatelessWidget {
  const LatestTransactionListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, index) => IntrinsicWidth(
        child: LatestTransactionItem(
          user: getUserInfo[index],
        ),
      ),
      separatorBuilder: (_, __) => 12.ws,
      itemCount: getUserInfo.length,
    );
  }
}
