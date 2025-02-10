import '../core/utils/app_images.dart';

class DrawerItemModel {
  final String title;
  final String img;

  const DrawerItemModel({required this.title, required this.img});
}

List<DrawerItemModel> drawerItems = [
  DrawerItemModel(title: "DashBoard", img: Assets.imagesDashboardIcon),
  DrawerItemModel(title: "My Transaction", img: Assets.imagesTransactionIcon),
  DrawerItemModel(title: "Statistics", img: Assets.imagesStatices),
  DrawerItemModel(title: "Wallet Account", img: Assets.imagesWaletIcon),
  DrawerItemModel(title: "My Investments", img: Assets.imagesInvestmentsIcon),
];
