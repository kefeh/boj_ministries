import 'package:boj_ministries/Home/helper/constants.dart';
import 'package:boj_ministries/Home/presentation/widgets/header.dart';
import 'package:boj_ministries/layout/responsive_padding.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, toolbarHeight),
        child: ResponsivePadding(
          small: paddingSmall,
          medium: paddingMedium,
          large: paddingLarge,
          direction: PaddingInset.horizontal,
          child: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            toolbarHeight: toolbarHeight,
            backgroundColor: Colors.white,
            titleSpacing: 0,
            actions: [
              Container(
                margin: const EdgeInsets.only(right: paddingSmall),
                child: IconButton(
                  onPressed: () {
                    final scaffoldState = _scaffoldKey.currentState;
                    if (scaffoldState!.isEndDrawerOpen) {
                      scaffoldState.closeEndDrawer();
                    } else {
                      scaffoldState.openEndDrawer();
                    }
                  },
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: Color.fromRGBO(122, 4, 36, 1),
                  ),
                ),
              )
            ],
            title: const Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: toolbarHeight,
                child: ResponsivePadding(
                  small: paddingSmall,
                  direction: PaddingInset.vertical,
                  child: Image(
                    image: AssetImage("assets/logo/boj_logo.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Scaffold(
        key: _scaffoldKey,
        endDrawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                title: const Text('Item 1'),
                leading: const Icon(
                  Icons.home,
                  color: Color.fromRGBO(122, 4, 36, 1),
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
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
