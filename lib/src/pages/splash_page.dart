import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();


}

class _SplashScreenState extends State<SplashScreen> {
  

@override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, "registro"));
  }

  
  @override
  Widget build(BuildContext context) {

    return Container(
       child: Container(
         
       ),
    );
  }
}