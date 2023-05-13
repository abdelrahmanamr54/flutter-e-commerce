//import 'dart:js_util';
//import 'dart:js_util/js_util_wasm.dart';
import 'package:final_session/loginpage.dart';
import 'package:final_session/model.dart';
import 'package:final_session/constans.dart';
import 'package:final_session/signuppage.dart';
import 'package:final_session/wlcome%20page.dart';
import 'package:flutter/material.dart';
import 'package:final_session/homescreen.dart';
import 'package:final_session/settingsscreen.dart';
import 'package:final_session/profilepage.dart';
class splashscreen extends StatefulWidget {


  @override
  State<splashscreen> createState() => _splashscreenState();
}


class _splashscreenState extends State<splashscreen> {

  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return welcomepage();
      }));
    }
    );

  }
  Widget build(BuildContext context) {
    return Scaffold(

body: SafeArea(
  child:   SizedBox(

    width: double.infinity,
    child: Column(
      children: <Widget>[
        Expanded(flex: 3,
        child: Column(
          children: <Widget>[
            Text("SAMS",
            style: TextStyle(
              fontSize: 36,
              color: kMainColor,
              fontWeight: FontWeight.bold

            ),),
          //  Text('wellcome'),
         Image.asset("asset/splash_1.png",
         ),
            Text('welcome!',

            style: TextStyle(

              fontSize: 40,
              fontWeight: FontWeight.bold,

            ),),

            Text('YOU ARE IN',

              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                color: Colors.orange

              ),),
          ],
        ),)
      ],
    ),
  ),
),     


    );
    
  }
}
