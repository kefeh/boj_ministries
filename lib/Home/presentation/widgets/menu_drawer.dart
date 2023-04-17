import 'package:boj_ministries/Home/helper/constants.dart';
import 'package:boj_ministries/theming/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Radius radius = Radius.circular(8);
    final theme = AppTheme.of(context);
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: theme.primary,
          width: 2,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: radius,
          bottomLeft: radius,
        ),
      ),
      width: (MediaQuery.of(context).size.width / 5) * 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: paddingSmall),
              children: [
                ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: paddingSmall),
                  trailing: const Text('Item 1'),
                  leading: Icon(
                    Icons.home,
                    color: theme.primary,
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: paddingSmall),
                  trailing: const Text('Item 1'),
                  leading: Icon(
                    Icons.home,
                    color: theme.primary,
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: paddingSmall),
                  trailing: const Text('Item 1'),
                  leading: Icon(
                    Icons.home,
                    color: theme.primary,
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: paddingSmall),
                  trailing: const Text('Item 1'),
                  leading: Icon(
                    Icons.home,
                    color: theme.primary,
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: paddingSmall),
                  trailing: const Text('Item 1'),
                  leading: Icon(
                    Icons.home,
                    color: theme.primary,
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: paddingSmall),
                  trailing: const Text('Item 1'),
                  leading: Icon(
                    Icons.home,
                    color: theme.primary,
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: paddingSmall),
                  trailing: const Text('Item 1'),
                  leading: Icon(
                    Icons.home,
                    color: theme.primary,
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: paddingSmall),
                  trailing: const Text('Item 1'),
                  leading: Icon(
                    Icons.home,
                    color: theme.primary,
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: paddingSmall),
                  trailing: const Text('Item 1'),
                  leading: Icon(
                    Icons.home,
                    color: theme.primary,
                  ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: paddingSmall),
            child: SvgPicture.asset(
              "assets/svgs/jesus_thorns.svg",
              semanticsLabel: "Jesus with crown of thorns",
            ),
          ),
        ],
      ),
    );
  }
}
