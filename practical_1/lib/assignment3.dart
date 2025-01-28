import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 234, 7, 255),
              ),
              Container(
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 7, 135, 255),
              ),
            ],
          ),
        ),
      ),
    );
  }
}