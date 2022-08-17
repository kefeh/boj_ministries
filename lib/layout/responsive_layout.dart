import 'package:boj_ministries/layout/breakpoints.dart';
import 'package:flutter/widgets.dart';

enum ResponsiveLayoutSize {
  small,
  medium,
  large,
}

typedef ResponsiveLayoutWidgetBuilder = Widget Function(BuildContext, Widget?);

class ResponsiveLayoutBuilder extends StatelessWidget {
  const ResponsiveLayoutBuilder({
    super.key,
    required this.small,
    required this.medium,
    required this.large,
    this.child,
  });

  final ResponsiveLayoutWidgetBuilder small;
  final ResponsiveLayoutWidgetBuilder medium;
  final ResponsiveLayoutWidgetBuilder large;

  final Widget Function(ResponsiveLayoutSize size)? child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      final screenWidth = MediaQuery.of(context).size.width;
      if (screenWidth <= LayoutBreakpoints.small) {
        return small(context, child?.call(ResponsiveLayoutSize.small));
      }
      if (screenWidth <= LayoutBreakpoints.medium) {
        return medium(context, child?.call(ResponsiveLayoutSize.medium));
      }
      if (screenWidth <= LayoutBreakpoints.large) {
        return large(context, child?.call(ResponsiveLayoutSize.large));
      }
      return large(context, child?.call(ResponsiveLayoutSize.large));
    });
  }
}
