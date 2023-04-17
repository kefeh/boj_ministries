import 'package:boj_ministries/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  final Color primary;
  final Color secondary;
  final Color accent;
  final Color inactive;

  AppThemeData(this.primary, this.secondary, this.accent, this.inactive);

  factory AppThemeData.defaultTheme() {
    return AppThemeData(
      AppColors.red,
      AppColors.white,
      AppColors.black,
      AppColors.white20,
    );
  }
}

class AppTheme extends InheritedWidget {
  const AppTheme({super.key, required this.data, required super.child});

  final AppThemeData data;

  static AppThemeData of(BuildContext context) {
    final theme = context.dependOnInheritedWidgetOfExactType<AppTheme>();
    if (theme != null) {
      return theme.data;
    } else {
      throw StateError('Could not find ancestor widget of type `AppTheme`');
    }
  }

  @override
  bool updateShouldNotify(covariant AppTheme oldWidget) =>
      data != oldWidget.data;
}
