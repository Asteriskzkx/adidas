import 'package:flutter/material.dart';

class AdidasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Color.fromARGB(255, 240, 240, 240),
                        width: 1.0,
                      ),
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 240, 240, 240),
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.search,
                          weight: 0.1,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: const InputDecoration(
                            hintText: 'Search',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
