
import 'package:flutter/material.dart';
import 'package:res_dashboard/core/extensions/media_query.dart';

class ImageBox extends StatelessWidget {
  const ImageBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: context.height * 0.02),
      margin: EdgeInsets.symmetric(
        horizontal: context.width * 0.03,
      ),
      decoration: BoxDecoration(
        color: Color(0xffC4C4C4),
      ),
      child: Icon(Icons.image),
    );
  }
}
