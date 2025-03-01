import 'package:flutter/material.dart';
import 'package:ui_challenge_1/info.dart';

class Navigation extends StatelessWidget {

  List? data ;
   Navigation({super.key,this.data});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(80,0,15,0),
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
                Icons.menu
              )
            ],
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 1,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Container(
              child: Column(
                      children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                child: ListView.builder(
                  itemCount: 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 300,
                          width: 280,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(20),
                            image: DecorationImage(image: NetworkImage("${cafe![index]["img1"]}"),
                                    fit: BoxFit.cover
                            )
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 300,
                          width: 280,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(20),
                            image: DecorationImage(image: NetworkImage("${cafe![index]["img2"]}"),
                                    fit: BoxFit.cover
                            )
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 300,
                          width: 280,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(20),
                            image: DecorationImage(image: NetworkImage("${cafe![index]["img3"]}"),
                                    fit: BoxFit.cover
                            )
                          ),
                        )
                      ],
                    );
                  }
                ),
              ),
              // Container(
              //   child: ListView.builder(
              //     itemCount: cafe.length,
              //     itemBuilder: (context, index) {
              //       return Container(
              //         height: 100,
              //         width: double.infinity,
              //         color: Colors.amber,
              //         child: Column(
              //           children: [
              //             Text(
              //               "",
              //               style: TextStyle(
              //                 fontSize: 24,
              //                 color: Colors.black
              //               ),
              //             ),
              //             Text(
              //               "",
              //               style: TextStyle(
              //                 color: Colors.black
              //               ),
              //             )
              //           ],
              //         ),
              //       );
              //     },
              //   ),
              // )
                      ],
                    ),
            ),
          );
        },
      )
    );
  }
}