import 'package:boj_ministries/Home/helper/constants.dart';
import 'package:boj_ministries/layout/responsive_padding.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsivePadding(
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
            child: Container(
              margin: const EdgeInsets.only(left: paddingSmall),
              child: IconButton(
                onPressed: () {
                  final scaffoldState = scaffoldKey.currentState;
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
    );
  }
}
