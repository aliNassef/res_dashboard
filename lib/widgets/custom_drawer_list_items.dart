import 'package:flutter/material.dart';
import 'package:res_dashboard/core/extensions/spacers.dart';
import '../models/drawer_item_model.dart';
import 'active_and_inactive_drawer_item.dart';

class CustomDrawerListItems extends StatefulWidget {
  const CustomDrawerListItems({
    super.key,
  });

  @override
  State<CustomDrawerListItems> createState() => _CustomDrawerListItemsState();
}

class _CustomDrawerListItemsState extends State<CustomDrawerListItems> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (_, index) => InkWell(
        onTap: () {
          if (selectedIndex != index) {
            setState(() {
              selectedIndex = index;
            });
          }
        },
        child: selectedIndex == index
            ? ActiveDrawerItem(drawerItems: drawerItems[index])
            : InActiveDrawerItem(
                drawerItems: drawerItems[index],
              ),
      ),
      separatorBuilder: (_, __) => 20.hs,
      itemCount: drawerItems.length,
    );
  }
}
