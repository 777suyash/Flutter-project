import 'package:flutter/material.dart';
import 'package:instagram/info.dart';
import 'package:instagram/message.dart';

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
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black,),
            label: 'Home', 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.black,),
            label: 'search', 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add,color: Colors.black,),
            label: 'add', 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined,color: Colors.black,),
            label: 'reels', 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.black,),
            label: 'profile',
          ),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Container(
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: NetworkImage(posts[index]["userProfile"]),
                              ),
                            ),
                            Text(
                              (posts[index]["username"]),
                              style: TextStyle(
                              color: Colors.white
                            ),),
                          ],
                        ),
                      ),
                    ],
                  );
                  },
                ),
              ),
              Container(
                height: 650,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: CircleAvatar(
                                          backgroundImage: NetworkImage(posts[index]["userProfile"]),
                                          radius: 20,
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Text(
                                      posts[index]["username"],
                                      style: TextStyle(
                                        color: Colors.white
                                      ),
                                ),
                                    ],
                                  ),
                                ),
                                
                                Container(
                                  child: Row(
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                            Icons.list,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                          print("Message icon pressed");
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => Message()));
                                          },
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 400,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(posts[index]["userProfile"]
                                ),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                       IconButton(
                                        icon: Icon(
                                            Icons.favorite_border_outlined,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                          print("like");
                                          //  Navigator.push(context, MaterialPageRoute(builder: (context) => MessageScreen()));
                                          },
                                        ),
                                         IconButton(
                                        icon: Icon(
                                            Icons.mode_comment_outlined,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                          print("comment");
                                          //  Navigator.push(context, MaterialPageRoute(builder: (context) => MessageScreen()));
                                          },
                                        ),
                                         IconButton(
                                        icon: Icon(
                                            Icons.share,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                          print("share");
                                          //  Navigator.push(context, MaterialPageRoute(builder: (context) => MessageScreen()));
                                          },
                                        ),
                                    ],
                                  ),
                                ),
                                 IconButton(
                                        icon: Icon(
                                            Icons.save_as_outlined,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                          print("save");
                                          //  Navigator.push(context, MaterialPageRoute(builder: (context) => MessageScreen()));
                                          },
                                        ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
