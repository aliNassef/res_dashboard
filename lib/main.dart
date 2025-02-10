import 'package:flutter/material.dart';
import 'package:res_dashboard/adaptive_layout.dart';
import 'package:res_dashboard/views/mobile_layout.dart';
import 'package:res_dashboard/views/tablet_layout.dart';
import 'package:res_dashboard/widgets/custom_drawer.dart';

import 'views/desktop_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Dashboard',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xfff7f9fa),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        drawer: MediaQuery.sizeOf(context).width < 800 ? CustomDrawer() : null,
        appBar: MediaQuery.sizeOf(context).width < 800
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
