import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;
  final Widget tablet;

  Responsive({
    @required this.desktop,
    @required this.mobile,
    this.tablet,
  });

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 800;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 800 &&
      MediaQuery.of(context).size.width < 1200;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth >= 1200) {
        return desktop;
      } else if (constraint.maxWidth >= 800) {
        return tablet ?? mobile;
      } else
        return mobile;
    });
  }
}
