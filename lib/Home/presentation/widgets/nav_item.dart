import 'package:flutter/material.dart';

class NavItems extends StatelessWidget {
  const NavItems({
    super.key,
    this.active = false,
    required this.text,
  });

  final bool active;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        text,
        style: TextStyle(
          color: active ? Colors.white : Colors.white.withOpacity(0.4),
          fontSize: active ? 18 : 16,
        ),
      ),
    );
  }
}
