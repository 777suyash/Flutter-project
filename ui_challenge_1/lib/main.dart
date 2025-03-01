import 'package:flutter/material.dart';
import 'package:ui_challenge_1/screen2.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
          width: double.infinity,
          decoration : BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://images.pexels.com/photos/6959943/pexels-photo-6959943.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              fit: BoxFit.cover
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0 ,0,0),
                child: Container(
                  child: Text(
                    "Welcome to Coffee Break",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30,0,10,0),
                child: Container(
                  child: Text(
                    "Your go to app for connecting with fellow coffee lovers discovering new cafes , and organizing coffee meetups !",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 193, 191, 191),
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
               SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 201, 151, 64)
                    ),
                    onPressed: () {
                      print("login");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Scrren2(),
                        )
                      );
                    }, 
                    child: Container(
                      height: 60,
                      width: 300,
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          ),
                        ),
                      ),
                    )
                    ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {
                      print("login");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Scrren2(),
                        )
                      );
                    }, 
                    child: Container(
                      height: 60,
                      width: 300,
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25
                          ),
                        ),
                      ),
                    )
                    ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        )
      );
  }
}
