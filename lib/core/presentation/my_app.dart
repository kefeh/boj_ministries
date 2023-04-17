import 'package:boj_ministries/Home/presentation/home_page.dart';
import 'package:boj_ministries/theming/app_theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppTheme(
        data: AppThemeData.defaultTheme(),
        child: const HomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
