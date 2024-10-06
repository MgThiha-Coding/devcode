import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget tablet_layout;
  final Widget desktop_layout;
  const ResponsiveLayout({
    super.key,
    required this.tablet_layout,
    required this.desktop_layout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 1200) {
        return tablet_layout;
      } else {
        return desktop_layout;
      }
    });
  }
}
