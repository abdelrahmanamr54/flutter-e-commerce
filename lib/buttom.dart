import 'package:final_session/constans.dart';
import 'package:final_session/homescreen.dart';
import 'package:final_session/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:final_session/settingsscreen.dart';
import 'package:final_session/favpage.dart';


class buttombar extends StatefulWidget {
  const buttombar({Key? key}) : super(key: key);

  @override
  State<buttombar> createState() => _buttombarState();
}

class _buttombarState extends State<buttombar> {
  int buttombar=0;
  int CurrentIndex=0;
  final  screens=[
   HomeScreen(),
    favpage(),
   profilepage(),

    settingpage()
  ];
  List<String>title=[
    'home',
    'fav',
    'catg',
    'settings'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text( title[CurrentIndex]),
          actions: [
            IconButton(onPressed: (){

    }, icon: Icon(Icons.search))
        ],
      ),
      body: screens[CurrentIndex],

      bottomNavigationBar:
      BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: buttombar,
          fixedColor: kMainColor,
          onTap: (value){
            setState((){
              buttombar=value;
            });

          },
          items: [

            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home',backgroundColor: Colors.yellowAccent
            ),
            BottomNavigationBarItem(icon: Icon(Icons.apps),label: 'categories',backgroundColor: Colors.blue),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'favourite',backgroundColor: Colors.red),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'setings',backgroundColor: Colors.green
            )
          ]
      ),

    );
  }
}
