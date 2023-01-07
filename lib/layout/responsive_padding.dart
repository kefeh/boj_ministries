import 'package:boj_ministries/layout/responsive_layout.dart';
import 'package:flutter/material.dart';

enum PaddingInset { vertical, horizontal, all }

class ResponsivePadding extends StatelessWidget {
  const ResponsivePadding({
    super.key,
    this.small = 0,
    this.medium = 0,
    this.large = 0,
    required this.child,
    required this.direction,
  });

  final double small;
  final double medium;
  final double large;
  final Widget child;
  final PaddingInset direction;

  EdgeInsets _getInsets(PaddingInset direction, double value) {
    if (direction == PaddingInset.all) {
      return EdgeInsets.all(value);
    }
    if (direction == PaddingInset.horizontal) {
      return EdgeInsets.symmetric(horizontal: value);
    }
    if (direction == PaddingInset.vertical) {
      return EdgeInsets.symmetric(vertical: value);
    }
    return EdgeInsets.all(value);
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutBuilder(
      small: (_, child) {
        return Padding(
          padding: _getInsets(direction, small),
          child: child,
        );
      },
      medium: (_, child) {
        return Padding(
          padding: _getInsets(direction, medium),
          child: child,
        );
      },
      large: (_, child) {
        return Padding(
          padding: _getInsets(direction, large),
          child: child,
        );
      },
      child: (_) {
        return child;
      },
    );
  }
}
