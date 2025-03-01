import 'package:flutter/material.dart';
import 'package:ui_challenge_1/home.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          decoration : BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://images.pexels.com/photos/827528/pexels-photo-827528.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
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
                    "Enjoy your coffee Breaks",
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
                    "Coffee breaks are about more than just caffine - they're moments of connection , relaxation, and enjoyment",
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
                            builder: (context) => Home(),
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