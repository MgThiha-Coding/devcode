import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    color: const Color.fromARGB(255, 65, 63, 63),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextField(
                            maxLines:
                                5, // Set a max lines limit for better usability
                            style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 13,
                            ),
                            decoration: InputDecoration(
                              hintText: '...',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(child: Image.asset('assets/emulator.png'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
