import 'package:flutter/material.dart';

class Assignment6 extends StatelessWidget {
  const Assignment6({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Container(
            height: 500,
            width: 500,
            color: Colors.amber,
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: const Color.fromARGB(255, 33, 243, 96),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}