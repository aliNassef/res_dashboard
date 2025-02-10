import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:res_dashboard/core/extensions/spacers.dart';
import 'custom_dots_indicator.dart';
import 'my_card.dart';

class CardsPageView extends StatefulWidget {
  const CardsPageView({
    super.key,
  });

  @override
  State<CardsPageView> createState() => _CardsPageViewState();
}

class _CardsPageViewState extends State<CardsPageView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpandablePageView.builder(
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemBuilder: (context, index) => MyCard(),
          itemCount: 3,
        ),
        20.hs,
        CustomDotsIndicator(
          position: currentIndex,
        )
      ],
    );
  }
}
