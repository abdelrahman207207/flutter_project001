import 'package:flutter/material.dart';

import 'category.dart';

class orders extends StatefulWidget {
  const orders({super.key});

  @override
  State<orders> createState() => _ordersState();
}

class _ordersState extends State<orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:  EdgeInsets.all(8.0),
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      color:  Color.fromARGB(255, 228, 227, 227),
                      borderRadius: BorderRadius.circular(50)),
                  child:  InkWell(
                    onTap: () =>
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const categorypage())),
                    child: Icon(
                      Icons.arrow_back_ios_sharp,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
               SizedBox(
                width: 10,
              ),
               Text("My Orders",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  )),
               SizedBox(
                width: 195,
              ),
              Padding(
                padding:  EdgeInsets.all(8.0),
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      color:  Color.fromARGB(255, 209, 208, 208),
                      borderRadius: BorderRadius.circular(50)),
                  child:  Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          )
        ],
      ),

      body:
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("On Going ",
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Color(0xFFFF7621),
                fontSize: 14,
                fontFamily: 'Sen',
                fontWeight: FontWeight.w700,
              ),),
              ],

            ),
            SizedBox(height: 10,),
            Text(" Food :"),
            SizedBox(height: 9,),
            Container(
              width: double.infinity,
              height: 645,
              child: ListView.builder( itemCount:8,scrollDirection: Axis.vertical, itemBuilder: (context,index)=>
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child:
                    Container(
                      width: 152,
                      height: 131,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                        ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(" \t \t\tFood : " , style: TextStyle(fontSize: 16 ,fontWeight: FontWeight.bold , color: Colors.grey),),
                          Divider(color: Colors.grey,),
                          Row(
                            children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                              child: Container(
                              width: 100,
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(image: NetworkImage("https://www.fsrmagazine.com/sites/default/files/styles/homepage_carousel_2x_640x476/public/sponsored_content/pasta-trends-restaurant-menus-1555087618.jpg?itok=EHNN6v3N"),fit: BoxFit.cover)
                              ),),
                            ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text("Pizza Hut", style: TextStyle(fontSize: 19)),
                                        SizedBox(width: 80,),
                                        Text("#162432", style: TextStyle(fontSize: 15 ,color: Colors.grey)),
                                      ],
                                    ),
                                    SizedBox(height: 30,),
                                    Row(
                                      children: [
                                        Text("Price || \$ 36.00 ", style: TextStyle(fontSize: 13 , fontWeight: FontWeight.bold)),
                                        Text(", 03 : items", style: TextStyle(fontSize: 13 ,color: Colors.grey)),

                                      ],
                                    ),


                                  ],
                                ),
                              )


                          ],
                          ),
                        ],
                      ),
                    )
                  )
              ),
            ),
          ],
        )








    );
  }
}






































