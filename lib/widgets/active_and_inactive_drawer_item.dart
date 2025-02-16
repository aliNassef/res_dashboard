import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/utils/app_color.dart';
import '../core/utils/app_styles.dart';
import '../models/drawer_item_model.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItems,
  });
  final DrawerItemModel drawerItems;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: Text(
          drawerItems.title,
          style: AppStyles.regular16(context).copyWith(
            color: Colors.black,
          ),
        ),
      ),
      leading: SvgPicture.asset(drawerItems.img),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItems,
  });
  final DrawerItemModel drawerItems;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: Text(
          drawerItems.title,
          style: AppStyles.regular16(context).copyWith(
            color: AppColors.primaryLight,
          ),
        ),
      ),
      leading: SvgPicture.asset(drawerItems.img),
      trailing: Container(
        color: AppColors.secondaryBlue,
        width: 4,
      ),
    );
  }
}
