import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    double gap = MediaQuery.of(context).size.width * 0.012;
    double iconSize = MediaQuery.of(context).size.width * 0.013;
    double textSize = MediaQuery.of(context).size.width * 0.011;

    return SafeArea(
        child: Row(
      children: [
        Expanded(
          child: Card(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: gap,
                    ),
                    _menuButton(
                        icon: Icons.folder, onPress: () {}, iconSize: iconSize),
                    SizedBox(
                      height: gap,
                    ),
                    _menuButton(
                        icon: Icons.search, onPress: () {}, iconSize: iconSize),
                    SizedBox(
                      height: gap,
                    ),
                    _menuButton(
                        icon: Icons.extension,
                        onPress: () {},
                        iconSize: iconSize),
                    SizedBox(
                      height: gap,
                    ),
                    _menuButton(
                        icon: Icons.person, onPress: () {}, iconSize: iconSize),
                    SizedBox(
                      height: gap,
                    ),
                    _menuButton(
                        icon: Icons.settings,
                        onPress: () {},
                        iconSize: iconSize),
                    SizedBox(
                      height: gap,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              _createProjectName(
                  projectName: 'DEVCODE',
                  icon: Icons.folder,
                  context: context,
                  textSize: textSize),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(children: [
                    _createListItems(
                        icon: Icons.arrow_forward_ios,
                        folderName: '.dart_tool',
                        onTap: () {},
                        textSize: textSize),
                    _createListItems(
                        icon: Icons.arrow_forward_ios,
                        folderName: '.idea',
                        onTap: () {},
                        textSize: textSize),
                    _createListItems(
                        icon: Icons.arrow_forward_ios,
                        folderName: 'android',
                        onTap: () {},
                        textSize: textSize),
                    _createListItems(
                        icon: Icons.arrow_forward_ios,
                        folderName: 'ios',
                        onTap: () {},
                        textSize: textSize),
                    _createListItems(
                        icon: Icons.arrow_forward_ios,
                        folderName: 'lib',
                        onTap: () {},
                        textSize: textSize),
                    _createListItems(
                        icon: Icons.arrow_forward_ios,
                        folderName: 'linux',
                        onTap: () {},
                        textSize: textSize),
                    _createListItems(
                        icon: Icons.arrow_forward_ios,
                        folderName: 'macos',
                        onTap: () {},
                        textSize: textSize),
                    _createListItems(
                        icon: Icons.arrow_forward_ios,
                        folderName: 'test',
                        onTap: () {},
                        textSize: textSize),
                    _createListItems(
                        icon: Icons.arrow_forward_ios,
                        folderName: 'web',
                        onTap: () {},
                        textSize: textSize),
                    _createListItems(
                        icon: Icons.arrow_forward_ios,
                        folderName: 'windows',
                        onTap: () {},
                        textSize: textSize),
                    _createListItems(
                        icon: Icons.arrow_forward_ios,
                        folderName: '.gitignore',
                        onTap: () {},
                        textSize: textSize),
                    _createListItems(
                        icon: Icons.arrow_forward_ios,
                        folderName: '.metadata',
                        onTap: () {},
                        textSize: textSize),
                    _createListItems(
                        icon: Icons.arrow_forward_ios,
                        folderName: 'analysis_options.yaml',
                        onTap: () {},
                        textSize: textSize),
                    _createListItems(
                        icon: Icons.arrow_forward_ios,
                        folderName: 'devcode.iml',
                        onTap: () {},
                        textSize: textSize),
                    _createListItems(
                        icon: Icons.arrow_forward_ios,
                        folderName: 'pubspec.lock',
                        onTap: () {},
                        textSize: textSize),
                    _createListItems(
                        icon: Icons.arrow_forward_ios,
                        folderName: 'pubspec.yaml',
                        onTap: () {},
                        textSize: textSize),
                    _createListItems(
                        icon: Icons.arrow_forward_ios,
                        folderName: 'README.md',
                        onTap: () {},
                        textSize: textSize),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

ListTile _createListItems({
  required IconData icon,
  required String folderName,
  required VoidCallback onTap,
  required double textSize,
}) {
  return ListTile(
    horizontalTitleGap: 1,
    dense: true,
    onTap: onTap,
    leading: Icon(
      icon,
      size: textSize,
      color: Colors.grey,
    ),
    title: Text(
      folderName,
      style: TextStyle(fontSize: textSize),
    ),
  );
}

ListTile _createProjectName({
  required String projectName,
  required IconData icon,
  required BuildContext context,
  required double textSize,
}) {
  return ListTile(
    leading: Icon(
      icon,
      color: Colors.blue,
    ),
    title: Text(
      projectName,
      style: GoogleFonts.poppins(
        fontSize: textSize,
      ),
    ),
  );
}

Widget _menuButton({
  required IconData icon,
  required VoidCallback onPress,
  required double iconSize,
}) {
  return IconButton(
    hoverColor: const Color.fromARGB(255, 140, 142, 143),
    onPressed: onPress,
    icon: Icon(
      icon,
      size: iconSize,
      color: Colors.blueGrey,
    ),
  );
}
