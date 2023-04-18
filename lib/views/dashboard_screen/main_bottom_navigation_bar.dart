import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../custom_icons_icons.dart';
import '../../providers/app_provider.dart';

class MainBottomNavigationBar extends StatelessWidget {
  const MainBottomNavigationBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AppProvider navBar = Provider.of<AppProvider>(context);
    return BottomNavigationBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      selectedLabelStyle: TextStyle(color: Theme.of(context).primaryColor),
      selectedItemColor: Theme.of(context).primaryColor,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      unselectedItemColor: Colors.grey,
      currentIndex: navBar.currentTap,
      onTap: (int index) => navBar.onTabTapped(index),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(CustomIcons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(CustomIcons.notification),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(CustomIcons.menu),
          label: 'Menu',
        ),
      ],
    );
  }
}
