import 'package:flutter/material.dart';
import 'package:ui_challenge_1/order.dart';

class Detail extends StatelessWidget {
  Map? data;
   Detail({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(80,20,15,0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Navigation",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
                ),
              Icon(
                Icons.menu,
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Container(
            height: 400,
            width: double.infinity,
            child: ListView.builder(
              // itemCount: data!.length,
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage("${data!["img"][index]}"),
                        fit: BoxFit.cover
                        )
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.fromLTRB(40,0,40,0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${data!["name"]}",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "${data!["fullAdd"]}",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.fromLTRB(40,0,40,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "About",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(147, 67, 68, 53)
                  ),
                ),
                Text(
                  "Menu",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(147, 67, 68, 53)
                  ),
                ),
                Text(
                  "Review",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(147, 67, 68, 53)
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40,20,0,0),
            child: Row(
              children: [
                Text(
                  "Hot Drinks",
                  style: TextStyle(
                    fontWeight: FontWeight.w500
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40,20,40,0),
            child: Container(
              height: 80,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(84, 204, 204, 204),
                    blurRadius: 5,
                    spreadRadius: 1
                  )
                ]
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,0,0),
                    child: CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 247, 224, 177),
                      child: Icon(
                          Icons.coffee_outlined,
                          color: const Color.fromARGB(255, 201, 151, 64)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30,0,0,0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Espresso",
                          style: TextStyle(
                            fontSize: 12
                          ),
                        ),
                        Text(
                          "IDR 20.000",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,20,0,0),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(84, 204, 204, 204),
                    blurRadius: 5,
                    spreadRadius: 1
                  )
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40,0,40,0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                              "Count",
                              style: TextStyle(
                                fontSize: 12
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              "IDR 65.000",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),
                            )
                      ],
                    ),
                  ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(0,0,40,0),
                   child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 201, 151, 64)
                      ),
                      onPressed: () {
                        print("click");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Order(),
                          )
                        );
                      }, 
                      child: Container(
                        height: 60,
                        width: 150,
                        child: Center(
                          child: Text(
                            "Order",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                            ),
                          ),
                        ),
                      )
                      ),
                 ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}