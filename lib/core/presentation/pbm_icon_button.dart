import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PBMIconButton extends StatelessWidget {
  const PBMIconButton({
    super.key,
    required this.icon,
    required this.size,
    this.color,
    this.onTap,
  });
  final IconData icon;
  final double size;
  final Color? color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: icon is FontAwesomeIcons
            ? FaIcon(
                icon,
                size: size,
                color: color,
              )
            : Icon(
                icon,
                size: size,
                color: color,
              ),
      ),
    );
  }
}
