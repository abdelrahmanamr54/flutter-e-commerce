import 'package:final_session/mobileinfo.dart';
import 'package:final_session/producetinfo.dart';
import 'package:final_session/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashscreen(),
routes: {
   producetinfo.id : (context)=> producetinfo(),

  mobileinfo.id : (context)=> mobileinfo()
}

    );
  }
}