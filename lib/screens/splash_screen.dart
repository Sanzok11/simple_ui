import 'dart:async';

import 'package:design_implementation/screens/first_screen.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget{
  const SplashScreen({Key? key}) : super(key: key);

  
  @override
  State<SplashScreen> createState()=> _SplashScreenState(
  );
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds:3),()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>const FirstScreen())));
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.white,
      body:Center(child:Image.asset('assets/splash.png',height: 200,width: 200,))
    );
  }
}