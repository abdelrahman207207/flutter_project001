import 'package:Food_Station/Login_screen/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _controller = PageController() ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient:
            LinearGradient(colors: [Color.fromARGB(255,255,118,34) , Color.fromARGB(255,255,255,255)],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft
            ),

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height:130,),

            Expanded(

              child: PageView(
                controller: _controller,
                children:[
                  SmothPageIndecatorScroller(img: "https://img.freepik.com/free-photo/top-view-table-full-delicious-food-composition_23-2149141352.jpg" , imgtxt:  "All what you want " ,descrip: "you can find all your favorite  \n dishes with us "  ),
                  SmothPageIndecatorScroller(img: "https://img.freepik.com/free-photo/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg?w=2000" , imgtxt:  "Healthy food  " ,descrip: "Dite food and helthy food in each day   "  ),
                  SmothPageIndecatorScroller(img: "https://img.freepik.com/premium-photo/arabian-food-hd-8k-wallpaper-stock-photographic-image_853645-46802.jpg?w=360" , imgtxt:  "Good presentation  " ,descrip: " new and unique style "  ),
                  SmothPageIndecatorScroller(img: "https://static.vecteezy.com/system/resources/thumbnails/027/718/172/small/cooking-in-the-kitchen-in-a-restaurant-generative-ai-photo.jpg" , imgtxt:  "High Quality controll" ,descrip: "use the best chif in each kitchien "  ),
              ]
              ),
            ),


            SmoothPageIndicator(controller: _controller, count: 4 ,
              effect: const ExpandingDotsEffect(
                activeDotColor: Colors.white54,
                dotHeight: 15,
                dotColor: Colors.orange,
                dotWidth: 10,
              ),
            ),


            SizedBox(height: 60,),
            InkWell(
              onTap: ()=>
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const LoginScreen())),

              child: Container(
                width: 327,
                height: 62 ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(255,255,118,34),
                ),
                child:
                Center(child: Text("Next" ,style: TextStyle(fontSize:18 ,color: Colors.white),)),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 327,
              height: 62 ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child:
              Center(child: Text("skip" ,style: TextStyle(fontSize:18 ,color: Colors.black54),)),
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }

  Column SmothPageIndecatorScroller({required String img ,required String imgtxt ,required String descrip}) {
    return Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    width: 290,
                    height: 292,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: NetworkImage("$img"),fit: BoxFit.cover)
                    ),
                  ),
                  SizedBox(height: 29,),
                  Container(
                    child: Text("$imgtxt", style: TextStyle(fontSize: 24 ,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text("$descrip", style: TextStyle(fontSize: 16 ,),),
                  )
                ],
              );
  }
}
