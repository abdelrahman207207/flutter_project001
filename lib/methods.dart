import 'package:flutter/material.dart';



class itemv {


  static Column verticallist(int index ) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 150,
          decoration:
          BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: NetworkImage(
                  "${cat[index]["img"]}" ),
                  fit: BoxFit.cover)
          ),
        ),
        SizedBox(height: 5,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("${cat[index]["imgtxt"]}", style: TextStyle(fontSize: 28 ,),),
            SizedBox(height: 20,),
            Text("${cat[index]["imgtxt"]}", style: TextStyle(fontSize: 15 , color: Colors.grey),),
            Text("Price Start from :", style: TextStyle(fontSize: 15 , color: Colors.grey),),
            Text("${cat[index]["price"]}", style: TextStyle(fontSize: 15 , color: Colors.grey),),

          ],
        )
      ],);
  }

  static   Row categorysidebar(int index) {
    return Row(
      children: [
        SizedBox(width: 8,),
        CircleAvatar(
          backgroundColor: Colors.white70,
          backgroundImage: NetworkImage("${hcat[index]["cimg"]}"),
        ),
        SizedBox(width: 7,),
        Text("${hcat[index]["htxt"]}" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 13),),],
    );
  }
}






List <Map> cat=[
  {"img" : "https://www.teenaagnel.com/wp-content/uploads/2019/12/food-photography-in-dubai.jpg" ,
  "imgtxt" : "Burger",
    "price":"299"
  },
  {"img" : "https://img.delicious.com.au/G-2mxbOh/w1200/del/2022/08/parmesan-crumbed-chicken-schnitzel-fried-eggs-and-apple-cabbage-slaw-173352-2.jpg" ,
  "imgtxt" : "chickens",
    "price":"149"
  },
  {"img" : "https://img.freepik.com/free-photo/fresh-pasta-with-hearty-bolognese-parmesan-cheese-generated-by-ai_188544-9469.jpg" ,
  "imgtxt" : "Pasta",
    "price":"170"
  },
{"img" : "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?cs=srgb&dl=pexels-ash-376464.jpg&fm=jpg" ,
  "imgtxt" : "Pan cake",
    "price":"129"
  },
];



List <Map> hcat=[
  {"cimg" : "https://cdn2.vectorstock.com/i/1000x1000/62/56/fire-flame-vector-23736256.jpg" ,
  "htxt" : "Hot Offers",
  },
  {"cimg" : "https://tmbidigitalassetsazure.blob.core.windows.net/rms3-prod/attachments/37/1200x1200/Crispy-Fried-Chicken_EXPS_TOHJJ22_6445_DR%20_02_03_11b.jpg" ,
  "htxt" : "checken",
  },
  {"cimg" : "https://thumbs.dreamstime.com/b/well-done-steak-suace-vagetables-food-photo-restaurant-menu-well-done-steak-suace-vagetables-reastaurant-151834963.jpg" ,
  "htxt" : "meet",
  },
  {"cimg" : "https://media.istockphoto.com/id/857927726/photo/pasta-with-meat-tomato-sauce-and-vegetables.jpg?s=612x612&w=0&k=20&c=1bcoXcBKM7Hb1ASweDx-vcwXEgy-WrCGM71dVP2Cp0w=" ,
  "htxt" : " pasta ",
  },
];

















