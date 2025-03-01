import 'package:flutter/material.dart';
import 'package:ui_challenge_1/screen3.dart';

class Scrren2 extends StatelessWidget {
   Scrren2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          decoration : BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              fit: BoxFit.cover
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30,0,0,0),
                child: Container(
                  child: Text(
                    "Connect with coffee Lovers ",
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
                padding: const EdgeInsets.fromLTRB(30,0,20,0),
                child: Container(
                  child: Text(
                    "Follow other enthusiasts, send them message, and share your favorite Coffee experiences",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 193, 191, 191),
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 201, 151, 64)
                    ),
                      onPressed: () {
                        print("next");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Screen3(),
                          )
                        );
                      }, 
                      child: Container(
                        height: 60,
                        width: 300,
                        child: Center(
                          child: Text(
                            "Next",
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
              ),
            ],
          ),
        )
      );
  }
}