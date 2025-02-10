import 'package:flutter/material.dart';

import '../models/expensis_model.dart';
import 'expensis_item.dart';

class ExpensisItems extends StatefulWidget {
  const ExpensisItems({
    super.key,
  });

  @override
  State<ExpensisItems> createState() => _ExpensisItemsState();
}

class _ExpensisItemsState extends State<ExpensisItems> {
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: expensis.asMap().entries.map((entry) {
        int index = entry.key;
        var expensis = entry.value;
        return Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: index == 1 ? 12 : 0,
            ),
            child: GestureDetector(
              onTap: () {
                updatePosition(index);
              },
              child: ExpensesItem(
                isSelected: isSelected == index,
                expensis: expensis,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  void updatePosition(int index) {
     setState(() {
      isSelected = index;
    });
  }
}
