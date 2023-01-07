import 'package:boj_ministries/Home/helper/constants.dart';
import 'package:boj_ministries/Home/presentation/widgets/header.dart';
import 'package:boj_ministries/Home/presentation/widgets/menu_drawer.dart';
import 'package:boj_ministries/layout/responsive_padding.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, toolbarHeight),
        child: Header(),
      ),
      body: Scaffold(
        key: scaffoldKey,
        endDrawer: const MenuDrawer(),
        body: SafeArea(
          child: ResponsivePadding(
            small: paddingSmall,
            medium: paddingMedium,
            large: paddingLarge,
            direction: PaddingInset.horizontal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Header(),
                Text(
                  '0',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
