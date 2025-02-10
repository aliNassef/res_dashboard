import '../core/utils/app_images.dart';

class UserInfoModel {
  final String image;
  final String title;
  final String subTitle;

  UserInfoModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

List<UserInfoModel> getUserInfo = [
  UserInfoModel(
    image: Assets.imagesLogo,
    title: 'Ali Nassef',
    subTitle: 'anassef798@gmail.com',
  ),
  UserInfoModel(
    image: Assets.imagesLogo,
    title: 'Ali Nassef',
    subTitle: 'anassef798@gmail.com',
  ),
  UserInfoModel(
    image: Assets.imagesLogo,
    title: 'Ali Nassef',
    subTitle: 'anassef798@gmail.com',
  ),
  UserInfoModel(
    image: Assets.imagesLogo,
    title: 'Ali Nassef',
    subTitle: 'anassef798@gmail.com',
  ),
  UserInfoModel(
    image: Assets.imagesLogo,
    title: 'Ali Nassef',
    subTitle: 'anassef798@gmail.com',
  ),
];
