import 'package:flutter/material.dart';
import 'package:ui_challenge_1/detail.dart';
import 'package:ui_challenge_1/info.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
              ),
              label: 'home'
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
              ),
              label: 'search'
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wallet_giftcard_outlined,
              color: Colors.black,
              ),
              label: 'gift'
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
              ),
              label: 'profile'
          ),
        ]
      ),
      body: Column(
        children: [
          Container(
            height: 380,
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  color: Colors.black,
                  height: 280,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30,80,30,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Good Morning Walsh!",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                              Text(
                                "it's a great day for coffee",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 32,
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.notifications,
                                color: Colors.white,
                                size: 32,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned( 
                  top: 180,
                  right: 20,
                  left: 20,
                  child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 1,
                        color: const Color.fromARGB(38, 0, 0, 0)
                      )
                      ]
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30,30,30,10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Your card balance",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: const Color.fromARGB(255, 122, 122, 122)
                                  )
                                  ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.monetization_on_outlined,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "IDR 246.000",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600
                                      ),
                                      ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Text(
                          ".- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . ",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 201, 163, 108),
                            fontSize: 20
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30,30,30,0), 
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.cloud_download_outlined,
                                        color: const Color.fromARGB(197, 153, 97, 0),
                                      ),
                                      Text(
                                        "Top UP"
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.cloud_upload_outlined,
                                        color: const Color.fromARGB(197, 153, 97, 0),
                                      ),
                                      Text(
                                        "Pay"
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.percent_outlined,
                                        color: const Color.fromARGB(197, 153, 97, 0),
                                      ),
                                      Text(
                                        "promo"
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.history,
                                        color: const Color.fromARGB(197, 153, 97, 0),
                                      ),
                                      Text(
                                        "History"
                                      )
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
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30,20,30,0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your card rewards",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Text(
                    "view all",
                    style: TextStyle(
                      color: const Color.fromARGB(198, 124, 78, 1),
                      fontSize: 16
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox( 
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30,0,30,0),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 1,
                        color: const Color.fromARGB(37, 212, 202, 202)
                    )
                  ]
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 247, 224, 177),
                    child: Icon(
                        Icons.coffee_outlined,
                        color: const Color.fromARGB(255, 201, 151, 64)
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,10,0,0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 260,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Free 1 Coffee",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                              Text(
                                "2/5"
                              )
                            ],
                          ),
                        ),
                        Text(
                      "Buy 5 Coffee and get 1 coffee for free"
                    )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30,10,30,0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended Place",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: const Color.fromARGB(198, 124, 78, 1),
                        fontSize: 14
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 250,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: cafe.length,
                  itemBuilder: (context,index){
                    return Row(
                      children: [
                        SizedBox(width: 30,),
                        InkWell(
                          onTap: () {
                            print("pressed");
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail(data: cafe[index],)));
                          },
                          child: Container(
                            height: 220,
                            width: 180,                        
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(cafe[index]["pic"]),
                                fit: BoxFit.cover
                              ),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20,0,0,0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    (cafe[index]["name"]),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        (cafe[index]["location"]),
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  }
                  ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30,0,30,0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Place",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: const Color.fromARGB(198, 124, 78, 1),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  } 
}