import 'package:res_dashboard/core/extensions/media_query.dart';
import 'package:res_dashboard/models/drawer_item_model.dart';
import 'package:res_dashboard/widgets/active_and_inactive_drawer_item.dart';
import 'package:res_dashboard/widgets/custom_drawer_list_items.dart';
import '../core/extensions/spacers.dart';
import '../core/utils/app_images.dart';
import '../widgets/user_info_title.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * .7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: 50.hs),
          // SliverToBoxAdapter(child: ImageBox()),
          // SliverToBoxAdapter(child: 10.hs),
          SliverToBoxAdapter(
            child: UserInfoTItle(
              img: Assets.imagesLogo,
              title: 'Ali Nassef',
              subTitle: 'anassef798@gmail.com',
            ),
          ),
          SliverToBoxAdapter(child: 20.hs),
          CustomDrawerListItems(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Spacer(),
                InActiveDrawerItem(
                  drawerItems: DrawerItemModel(
                    title: 'Setting system',
                    img: Assets.imagesSettingIcon,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItems: DrawerItemModel(
                    title: 'Logout account',
                    img: Assets.imagesLogout,
                  ),
                ),
                30.hs,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
