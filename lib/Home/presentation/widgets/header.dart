import 'package:boj_ministries/layout/responsive_padding.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          ResponsivePadding(
            small: 20,
            direction: PaddingInset.all,
            child: Image(
              image: AssetImage("assets/logo/boj_logo.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}
