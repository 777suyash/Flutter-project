import 'package:flutter/material.dart';

class Assign8 extends StatelessWidget {
  const Assign8({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            height: 300,
            width: 500,
            color: Colors.blue,
            child: Row(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(100)
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: 211,
                  color: const Color.fromARGB(255, 141, 129, 128),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}