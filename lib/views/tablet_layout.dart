import 'package:flutter/material.dart';
import 'package:res_dashboard/core/extensions/spacers.dart';
import '../widgets/custom_drawer.dart';
import 'mobile_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: CustomDrawer()),
          24.ws,
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: MobileLayout(),
            ),
          ),
          24.ws,
        ],
      ),
    );
  }
}
