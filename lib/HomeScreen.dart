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
                  SmothPageIndecatorScroller(),
                  SmothPageIndecatorScroller(),
                  SmothPageIndecatorScroller(),
                  SmothPageIndecatorScroller(),
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
            Container(
              width: 327,
              height: 62 ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromARGB(255,255,118,34),
              ),
              child:
              Center(child: Text("Next" ,style: TextStyle(fontSize:18 ,color: Colors.white),)),
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

  Column SmothPageIndecatorScroller() {
    return Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Container(
                  //   width: 240,
                  //   height: 292,
                  //   decoration:
                  //   BoxDecoration(
                  //   color: Colors.black12,
                  //       borderRadius: BorderRadius.circular(20)),
                  //   child: Image(
                  //       image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsWRnzBT4W8inf6BJ7P6Hm5Uxq8jDYtl5E1Q&usqp=CAU"),
                  //   width: double.infinity,
                  //     height: 20,
                  //   ),
                  // ),
                  Container(
                    width: 290,
                    height: 292,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: NetworkImage("https://img.freepik.com/free-photo/top-view-table-full-delicious-food-composition_23-2149141353.jpg?w=2000"),fit: BoxFit.cover)
                    ),
                  ),
                  SizedBox(height: 29,),
                  Container(
                    child: Text("All your favorites ", style: TextStyle(fontSize: 24 ,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text("Get all your loved foods in one once place\,\nyou just place the orer we do the rest ", style: TextStyle(fontSize: 16 ,),),
                  )
                ],
              );
  }
}
