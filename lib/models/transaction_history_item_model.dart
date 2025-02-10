import 'package:flutter/material.dart';

class TransactionHistoryItemModel {
  final String title, subTitle, price;
  final Color priceColor;

  const TransactionHistoryItemModel({
    required this.title,
    required this.subTitle,
    required this.price,
    required this.priceColor,
  });
}
