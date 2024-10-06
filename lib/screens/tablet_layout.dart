import 'package:devcode/screens/components/shared/dashboard.dart';
import 'package:devcode/screens/components/shared/sidebar.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<TabletLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _headbar(context),
      ),
      endDrawer: const Drawer(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 10,
              child: ListTile(
                title: Text('Google Pixel 8 (running)'),
                trailing: Icon(Icons.play_arrow_rounded),
              ),
            ),
          ],
        ),
      )),
      body: Row(
        children: [
          Expanded(child: Sidebar()),
          Expanded(flex: 2, child: Dashboard()),
        ],
      ),
    );
  }
}

Widget _headbar(BuildContext context) {
  double font = MediaQuery.of(context).size.width;
  double size = font * 0.01;
  return Card(
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('main.dart'),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.close,
                    size: size,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Reload',
                        style: TextStyle(fontSize: size),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.circle,
                          size: size,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Restart',
                        style: TextStyle(fontSize: size),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_arrow,
                          size: size,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
