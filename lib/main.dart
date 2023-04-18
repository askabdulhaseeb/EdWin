import 'package:edwin/providers/app_provider.dart';
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
      ],
      child: MaterialApp(
        title: 'EdWin',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Scaffold(body: Center(child: Text('Init'))),
      ),
    );
  }
}
