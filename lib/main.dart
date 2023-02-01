import 'package:afed/sinscrire.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:afed/utils.dart';
import 'package:afed/home-4.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'ajouterannonce.dart';
import 'constant.dart';
import 'mesobjetsperdus.dart';
import 'contactus.dart';
import 'mesobjetstrouves.dart';
void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Afed',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
      AnimatedSplashScreen(
        splashTransition:SplashTransition.fadeTransition,
      splash:   Image.asset('assets/page-1/images/fichier-1090639-1.png'),
      nextScreen: Sinscrire(),
     backgroundColor: blanc,
        splashIconSize:150,

     ),
    );
  }
}
