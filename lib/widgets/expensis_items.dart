import 'package:flutter/material.dart';
import 'package:res_dashboard/core/extensions/spacers.dart';

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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updatePosition(0);
            },
            child: ExpensesItem(
              isSelected: isSelected == 0,
              expensis: expensis[0],
            ),
          ),
        ),
        12.ws,
        Expanded(
          child: GestureDetector(
            onTap: () {
              updatePosition(1);
            },
            child: ExpensesItem(
              isSelected: isSelected == 1,
              expensis: expensis[1],
            ),
          ),
        ),
        12.ws,
        Expanded(
          child: GestureDetector(
            onTap: () {
              updatePosition(2);
            },
            child: ExpensesItem(
              isSelected: isSelected == 2,
              expensis: expensis[2],
            ),
          ),
        ),
      ],
    );

    // return Row(
    //   children: expensis.asMap().entries.map((entry) {
    //     int index = entry.key;
    //     var expensis = entry.value;
    //     return Expanded(
    //       child: Padding(
    //         padding: EdgeInsets.symmetric(
    //           horizontal: index == 1 ? 12 : 0,
    //         ),
    //         child: GestureDetector(
    //           onTap: () {
    //             updatePosition(index);
    //           },
    //           child: ExpensesItem(
    //             isSelected: isSelected == index,
    //             expensis: expensis,
    //           ),
    //         ),
    //       ),
    //     );
    //   }).toList(),
    // );
  }

  void updatePosition(int index) {
    setState(() {
      isSelected = index;
    });
  }
}
