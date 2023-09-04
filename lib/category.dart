import 'package:flutter/material.dart';

class categorypage extends StatefulWidget {
  const categorypage({super.key});

  @override
  State<categorypage> createState() => _categorypageState();
}

class _categorypageState extends State<categorypage> {
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
                  child:Icon(Icons.food_bank_outlined,color: Colors.white,),
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
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)=>
                        Container(
                          decoration: BoxDecoration( borderRadius: BorderRadius.circular(60),
                              boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 4,
                                blurRadius: 8,
                                offset: Offset(-1 , -1), // changes position of shadow
                                        ),
                                        ],
                            color: Colors.black12,
                          ),
                          height: 110,
                          width: 120,
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),
                          child: SideScrollCategory("Meet And Fruits"),
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


              child: ListView.builder( itemCount: 12 ,scrollDirection: Axis.vertical, itemBuilder: (context,index)=>
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          width: 360,
                          height: 150,
                          decoration:
                          BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(image: NetworkImage(
                                  "https://media.istockphoto.com/id/469354734/photo/fresh-and-raw-meat-sirloin-medallions-steaks.jpg?s=612x612&w=0&k=20&c=OH-FtjIgFS2psxomUDTZ450Zc35VvyZCQP2w64cbl_4="),
                                  fit: BoxFit.cover)
                          ),
                        ),
                        SizedBox(width: 15,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Rost Beef Meat", style: TextStyle(fontSize: 28 ,),),
                            SizedBox(height: 20,),
                            Text("Very Good Holland Pice", style: TextStyle(fontSize: 15 , color: Colors.grey),),
                            Text("Price Start from :", style: TextStyle(fontSize: 15 , color: Colors.grey),),
                            Text("300L.E", style: TextStyle(fontSize: 15 , color: Colors.grey),),

                          ],
                        )
                      ],),
                  )


              ),
            )



          ],
        ),

      ),








    );
  }
  Text SideScrollCategory(String tet) => Text("$tet " , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 13),);

}









