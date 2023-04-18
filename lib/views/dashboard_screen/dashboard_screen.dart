import 'package:edwin/views/dashboard_screen/main_bottom_navigation_bar.dart';
import 'package:edwin/views/dashboard_screen/pages/home_page.dart';
import 'package:edwin/views/dashboard_screen/pages/menu_page.dart';
import 'package:edwin/views/dashboard_screen/pages/notification_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/app_provider.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  static const String routeName = '/dashboard';
  @override
  Widget build(BuildContext context) {
    const List<Widget> pages = <Widget>[
      HomePage(),
      NotificationPage(),
      MenuPage(),
    ];
    return Scaffold(
      body: Consumer<AppProvider>(
        builder: (context, appPro, _) {
          return Center(child: pages[appPro.currentTap]);
        },
      ),
      bottomNavigationBar: const MainBottomNavigationBar(),
    );
  }
}
