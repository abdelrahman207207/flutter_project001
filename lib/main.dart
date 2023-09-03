import 'package:Food_Station/shopcategoysscreen.dart';
import 'package:flutter/material.dart';
import 'package:Food_Station/SplashScreen.dart';
import 'HomeScreen.dart';

void main() async{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // routes: {
        //   "shopcategory": (context) =>  shopcategore(),
        //
        // },
      home: HomeScreen() ,
      debugShowCheckedModeBanner: false,
    );
  }
}
