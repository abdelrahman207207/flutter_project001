import 'package:flutter/material.dart';
import 'package:Food_Station/SplashScreen.dart';
import 'HomeScreen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen() ,
      debugShowCheckedModeBanner: false,
    );
  }
}
