import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project001/HomeScreen.dart';
import 'package:google_fonts/google_fonts.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2 )).then((value){


      Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
      setState(() { });

    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color.fromARGB(255,255,118,34) , Color.fromARGB(255,255,255,255)],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.motorcycle_rounded ,
            size: 80,
            color: Colors.white,),
            Text("Food Station",style: TextStyle(fontSize: 25 ,fontWeight: FontWeight.bold ,color: Colors.white , ),)
          ],
        ),
      ),
    );

  }

}



