import 'package:flutter/material.dart';

class Notification extends StatelessWidget {
  const Notification({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "instagram",
            style: TextStyle(
              color: Colors.white
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
              onPressed: () {
                print('Notification');
              },
            ),
            IconButton(
              icon: Icon(
                Icons.message_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                print('message');
              },
            ),
          ],
        ),
      ),
    );
  }
}