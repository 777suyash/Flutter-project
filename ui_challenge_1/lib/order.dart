import 'package:flutter/material.dart';

class Order extends StatelessWidget {
   Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,0,60,0),
            child: Text(
              "Order"
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(40,20,40,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Shipping address"
                        ),
                        Text(
                          "Jl. Melati No. 12",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Icon(
                  Icons.menu
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40,0,40,0),
            child: Container(
              height: 60,
              color: const Color.fromARGB(255, 247, 241, 241),
              width: double.infinity,
              child: Row(
                children: [
                  Icon(
                    Icons.note_alt_outlined
                  ),
                  SizedBox(width: 20,),
                  Text(
                    "note for driver"
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            width: double.infinity,
            height: 1,
            color: const Color.fromARGB(54, 0, 0, 0),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.fromLTRB(40,0,40,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Shopping list",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "+ Add more",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(198, 124, 78, 1),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
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
                          "Macchiato",
                          style: TextStyle(
                            fontSize: 12
                          ),
                        ),
                        Text(
                          "IDR 25.000",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(198, 124, 78, 1),
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
                          "Cold Brew",
                          style: TextStyle(
                            fontSize: 12
                          ),
                        ),
                        Text(
                          "IDR 40.000",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(198, 124, 78, 1),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            width: double.infinity,
            height: 1,
            color: const Color.fromARGB(54, 0, 0, 0),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.fromLTRB(40,0,40,0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Payment Details",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total price",
                      style: TextStyle(
                        fontSize: 14
                      ),
                    ),
                    Text(
                      "IDR 65.000",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Delivery Fee",
                      style: TextStyle(
                        fontSize: 14
                      ),
                    ),
                    Text(
                      "IDR 14.000",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Packing Fee",
                      style: TextStyle(
                        fontSize: 14
                      ),
                    ),
                    Text(
                      "IDR 3.200",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 40,),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40,0,40,0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                            "IDR 65.000",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(width: 20,),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(197, 184, 116, 0)
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
                              height: 25,
                              width: 60,
                              child: Center(
                                child: Text(
                                  "Gopay",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20
                                  ),
                                ),
                              ),
                            ),
                            ),
                      ],
                    ),
                    Icon(
                      Icons.menu
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(197, 184, 116, 0)
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
                  height: 50,
                  width:300,
                  child: Center(
                    child: Text(
                      "Order Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                  ),
                )
              ),
            ]
          )
        ],
      ),
    );
  }
}