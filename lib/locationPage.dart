import 'package:Food_Station/category.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class locationPage extends StatelessWidget {
  const locationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse('https://goo.gl/maps/1CdWbQYdDJmpxLxB6');
    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }

  //   final Uri _url = Uri.parse("https://goo.gl/maps/LvvLSziFy7vQJn438");
  //
  //   Future<void> _launchUrl() async {
  //     if (!await launchUrl(_url)) {
  //       throw 'Could not launch $_url';
  //     }
  // }
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
            children: [
              SizedBox(height: 150,),
              Container(
                width: 246,
                height: 290,
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(60),
                color: Colors.orange,
                image: DecorationImage(image: NetworkImage("https://t3.ftcdn.net/jpg/03/24/73/92/360_F_324739203_keeq8udvv0P2h1MLYJ0GLSlTBagoXS48.jpg"), fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 40,),


              InkWell (
                onTap:  _launchUrl ,
                child: Container(
                  width: 307,
                  height: 62 ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255,255,118,34),
                  ),
                  child:
                  Center(child: Text("Restorant Location" ,style: TextStyle(fontSize:18 ,color: Colors.white),)),
                ),
              ),


              SizedBox(height: 30,),
              InkWell(
                onTap: () =>
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const categorypage())),
                child: Container(
                  width: 307,
                  height: 62 ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255,255,118,34),
                  ),
                  child:
                  Center(child: Text("See Our Products" ,style: TextStyle(fontSize:18 ,color: Colors.white),)),
                ),
              ),


            ]),
      ),







    );
  }
}



