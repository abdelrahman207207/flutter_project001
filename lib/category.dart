import 'package:Food_Station/HomeScreen.dart';
import 'package:Food_Station/SplashScreen.dart';
import 'package:Food_Station/helper/hive_helper.dart';
import 'package:Food_Station/order.dart';
import 'package:flutter/material.dart';
import 'Orders.dart';
import 'methods.dart';
class categorypage extends StatefulWidget {
  const categorypage({super.key});

  @override
  State<categorypage> createState() => _categorypageState();
}

class _categorypageState extends State<categorypage> {
  HiveHelper hiveHelper=HiveHelper();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
        // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
                const DrawerHeader(
                decoration: BoxDecoration(
                color: Colors.blue,
                  ),
                  child: CircleAvatar(backgroundImage:
                  NetworkImage("https://img.freepik.com/free-photo/bohemian-man-thinking_1368-3693.jpg?w=2000")),
                   ),
                ListTile(
                  leading: Icon(Icons.group),
                  title: const Text('contact us .'),
                  onTap: () =>
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  OrderPage())),
                  ),
                  Divider(color: Colors.black38,),
               ListTile(
                            leading: Icon(Icons.favorite_border),
                            title: const Text('My Favorites'),
                            onTap: () =>
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  OrderPage())),
                            ),
                  Divider(color: Colors.black38,),

                ListTile(
                  leading: Icon(Icons.icecream),
                  title: const Text('Ouer pest category '),
                  onTap: () =>
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  OrderPage())),
                  ),
                  Divider(color: Colors.black38,),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: const Text('Your categore '),
                  onTap: () =>
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  orders())),
                  ),
                  Divider(color: Colors.black87),
                ListTile(
                  leading: Icon(Icons.restart_alt),
                  title: const Text('Log Out '),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const SplashScreen()));
                    HiveHelper.clearToken();
                  }
              ,
            ),
                  ],
      ),),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration( color: Colors.white, borderRadius: BorderRadius.circular(50)),
                  child:Icon(Icons.menu,color: Colors.grey,),
                ),
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 23,),
                  Text("Deliver to", style: TextStyle(color: Colors.orange),),
                  Text("Your current location",style: TextStyle(color: Colors.grey),),
                ],


              ),
              SizedBox(width: 150,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration( color: Colors.black, borderRadius: BorderRadius.circular(50)),
                  child:InkWell(
                      onTap: () =>
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const orders())),

                      child: Icon(Icons.food_bank_outlined,color: Colors.white,)),
                ),
              ),

            ],
          )
        ],
      ),
      body:
      Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 20,15),
        child: Column(
          children: [
            Row(
              children: [
                Text("Hey Halal,",style:TextStyle(fontSize: 18) ,),
                Text(" Good Afternoon!",style:TextStyle(fontSize: 18 , fontWeight: FontWeight.bold) ,),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              width: 330,
              height: 62 ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color.fromARGB(255, 232, 232, 232),
              ),
              child:
              Center(
                  child: Row(
                    children: [
                  SizedBox(width: 5,),
                  Icon(Icons.search_rounded,color: Colors.grey,),
                  SizedBox(width: 5,),
                  Text("Search dishes, restaurants" ,style: TextStyle(fontSize:12 ,color: Colors.grey),),
                ],)),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(9, 18 , 20 , 10),
                  child: Text("All Categories" ,style: TextStyle(fontSize: 19 ,  ),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(140, 19 , 5 , 10),
                  child: Text("See All" ,style: TextStyle(color: Colors.grey), ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 19 , 0 , 10),
                  child: Icon(Icons.arrow_forward_ios_outlined , size: 15,color: Colors.grey,),
                )
                

              ],
            ),
            Container(
                height: 70,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: Arrays.hcat.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)=>
                        Container(
                          decoration: BoxDecoration( borderRadius: BorderRadius.circular(60),
                              boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 4,
                                blurRadius: 8,
                                offset: Offset(-3 , -3), // changes position of shadow
                                        ),
                                        ],
                            color: Colors.black12,
                          ),
                          height: 110,
                          width: 120,
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),
                          child:
                          itemv.categorysidebar(index)
                          // SideScrollCategory("Meet And Fruits"),
                        ))),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(9, 18 , 20 , 10),
                  child: Text("Hot Meals 🔥" ,style: TextStyle(fontSize: 19 ,  ),),
                ),
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(150, 19 , 5 , 10),
                //   child: Text("See All" ,style: TextStyle(color: Colors.grey), ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(0, 19 , 0 , 10),
                //   child: Icon(Icons.arrow_forward_ios_outlined , size: 15,color: Colors.grey,),
                // )
              ],
            ),
        Container(
          width: double.infinity,
          height: 411,
          child: ListView.builder( itemCount: Arrays.cat.length ,
              scrollDirection: Axis.vertical,
              itemBuilder: (context,index)=>
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:
              InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  OrderPage()));
                    HiveHelper.addData(Arrays.cat[index]);
                  },
                  child: itemv.verticallist( index )),

            )
        ),
      ),
          ],
        ),

      ),
    );
  }

  //
  // Column verticallist({required String img ,required String imgtxt ,required String price}) {
  //   return Column(
  //             children: [
  //               Container(
  //                 width: 360,
  //                 height: 150,
  //                 decoration:
  //                 BoxDecoration(
  //                     borderRadius: BorderRadius.circular(20),
  //                     image: DecorationImage(image: NetworkImage(
  //                         "$img"),
  //                         fit: BoxFit.cover)
  //                 ),
  //               ),
  //               SizedBox(width: 15,),
  //               Column(
  //                 mainAxisAlignment: MainAxisAlignment.start,
  //                 children: [
  //                   Text("$imgtxt", style: TextStyle(fontSize: 28 ,),),
  //                   SizedBox(height: 20,),
  //                   Text("Very Good $imgtxt", style: TextStyle(fontSize: 15 , color: Colors.grey),),
  //                   Text("Price Start from :", style: TextStyle(fontSize: 15 , color: Colors.grey),),
  //                   Text("$price L.E", style: TextStyle(fontSize: 15 , color: Colors.grey),),
  //
  //                 ],
  //               )
  //             ],);
  // }





  // Row categorysidebar(String img , String txt) {
  //   return Row(
  //                         children: [
  //                           SizedBox(width: 8,),
  //                           CircleAvatar(
  //                             backgroundColor: Colors.white70,
  //                             backgroundImage: NetworkImage("$img"),
  //                           ),
  //                           SizedBox(width: 7,),
  //                           Text("$txt" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 13),),],
  //                       );
  // }
  //commetted


  Text SideScrollCategory(String tet) => Text("$tet " , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 13),);

}










