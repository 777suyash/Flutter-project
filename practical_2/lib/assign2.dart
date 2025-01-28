import 'package:flutter/material.dart';

class Assign2 extends StatelessWidget {
  const Assign2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.amber,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.amber,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.amber,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.amber,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}