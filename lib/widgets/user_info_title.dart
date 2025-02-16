import 'package:flutter_svg/svg.dart';
import '../core/utils/app_color.dart';
import '../core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import '../core/extensions/spacers.dart';

class UserInfoTItle extends StatelessWidget {
  const UserInfoTItle({
    super.key,
    required this.title,
    required this.subTitle,
    required this.img,
  });
  final String title;
  final String subTitle;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffFAFAFA),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(img),
          10.ws,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppStyles.semiBold16(context).copyWith(
                    color: AppColors.primaryDark,
                  ),
                ),
                4.hs,
                FittedBox(
                  child: Text(
                    subTitle,
                    style: AppStyles.regular12(context).copyWith(
                      color: AppColors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
