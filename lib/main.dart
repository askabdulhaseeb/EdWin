import 'package:edwin/providers/app_provider.dart';
import 'package:edwin/providers/profile_provider.dart';
import 'package:edwin/utilities/utilities.dart';
import 'package:edwin/views/dashboard_screen/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppProvider>.value(value: AppProvider()),
        ChangeNotifierProvider<ProfileProvider>.value(value: ProfileProvider()),
      ],
      child: MaterialApp(
        title: 'EdWin',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            color: Colors.transparent,
            elevation: 0,
            centerTitle: false,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          primarySwatch: Colors.blue,
          primaryColor: Utilities.primaryColor,
        ),
        home: const DashboardScreen(),
      ),
    );
  }
}
