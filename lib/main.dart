import 'package:flutter/material.dart';
import 'package:juativendor/src/pages/metodo_pagos_page.dart';
import 'package:juativendor/src/pages/servicios_page.dart';
import 'package:juativendor/src/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        theme: ThemeData(
        primaryColor: Color.fromRGBO(255, 87, 79, 1.0),
        accentColor: Colors.white
      ),
        debugShowCheckedModeBanner: false,
        title: 'JUATI',
        initialRoute: 'metodopa',
        routes: {
          'splash' : (BuildContext context) => SplashScreen(),
          'servicios' : (BuildContext context) => ServiciosPage(),
          'metodopa' : (BuildContext context) => MetodoPagosPage(),
          
          
        },
      );
  }
}