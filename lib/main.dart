import 'package:devcode/responsive/responsive_layout.dart';
import 'package:devcode/screens/desktop_layout.dart';
import 'package:devcode/screens/tablet_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        tablet_layout: TabletLayout(), desktop_layout: DesktopLayout());
  }
}
