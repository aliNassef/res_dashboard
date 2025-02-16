import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:res_dashboard/adaptive_layout.dart';
import 'package:res_dashboard/core/utils/app_color.dart';
import 'package:res_dashboard/views/mobile_layout.dart';
import 'package:res_dashboard/views/tablet_layout.dart';
import 'package:res_dashboard/widgets/custom_drawer.dart';

import 'core/utils/size_config.dart';
import 'views/desktop_layout.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Responsive Dashboard',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xfff7f9fa),
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryDark),
        primaryColor: AppColors.primaryDark,
        useMaterial3: true,
      ),
      home: Scaffold(
        drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
            ? CustomDrawer()
            : null,
        appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
            ? _buildAppBar()
            : null,
        backgroundColor: Color(0xfff7f9fa),
        body: AdaptiveLayout(
          mobileLayout: (context) => MobileLayout(),
          tabletLayout: (context) => TabletLayout(),
          desktopLayout: (context) => DesktopLayout(),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Color(0xfff7f9fa),
      leading: Builder(builder: (context) {
        return InkWell(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: Icon(Icons.menu),
        );
      }),
    );
  }
}
