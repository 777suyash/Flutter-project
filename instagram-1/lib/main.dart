import 'package:flutter/material.dart';
import 'package:instagram/message.dart';
import 'package:instagram/notify.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "instagram",
            style: TextStyle(
              color: Colors.white,
              ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                print('notification');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notify()),
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.message_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                print('Messeage');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Message()),
                );
              },
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Container(
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: NetworkImage("https://akm-img-a-in.tosshub.com/sites/dailyo/story/embed/201705/mr_052517022508.jpg"),
                              ),
                            ),
                            Text('Mr.India',style: TextStyle(
                              color: Colors.white
                            ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Container(
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: NetworkImage("https://s4.scoopwhoop.com/anj2/5e4b8b72e2a04c2de8dd4d1f/ee770eb2-4af1-4905-bf56-146c8ae4592d.jpg"),
                              ),
                            ),
                            Text('Mogambo',style: TextStyle(
                              color: Colors.white
                            ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Container(
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: NetworkImage("https://akm-img-a-in.tosshub.com/sites/dailyo/story/embed/201705/mr_052517022508.jpg"),
                              ),
                            ),
                            Text('Mr.India',style: TextStyle(
                              color: Colors.white
                            ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Container(
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: NetworkImage("https://akm-img-a-in.tosshub.com/sites/dailyo/story/embed/201705/mr_052517022508.jpg"),
                              ),
                            ),
                            Text('Mr.India',style: TextStyle(
                              color: Colors.white
                            ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Container(
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: NetworkImage("https://akm-img-a-in.tosshub.com/sites/dailyo/story/embed/201705/mr_052517022508.jpg"),
                              ),
                            ),
                            Text('Mr.India',style: TextStyle(
                              color: Colors.white
                            ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Container(
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: NetworkImage("https://akm-img-a-in.tosshub.com/sites/dailyo/story/embed/201705/mr_052517022508.jpg"),
                              ),
                            ),
                            Text('Mr.India',style: TextStyle(
                              color: Colors.white
                            ),),
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
