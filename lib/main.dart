import 'package:Food_Station/locationPage.dart';
import 'package:flutter/material.dart';
import 'package:Food_Station/SplashScreen.dart';
import 'HomeScreen.dart';
import 'package:url_launcher/url_launcher.dart';

import 'category.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: categorypage() ,
      debugShowCheckedModeBanner: false,
    );
  }
}
