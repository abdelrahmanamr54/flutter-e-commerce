import 'package:final_session/catgpage.dart';
import 'package:final_session/constans.dart';
import 'package:final_session/favpage.dart';
import 'package:final_session/mobileinfo.dart';
import 'package:final_session/model.dart';
import 'package:final_session/producetinfo.dart';
import 'package:final_session/profilepage.dart';
import 'package:final_session/settingsscreen.dart';
import 'package:final_session/splash.dart';
import 'package:flutter/material.dart';
import 'package:final_session/model.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tabindex = 0;

int buttombar=0;
int CurrentIndex=0;
final  screens=[
HomeScreen(),
favpage(),
  catgpage(),

  settingpage()
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          DefaultTabController(length: 4,


              child: Scaffold(

                appBar: AppBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  bottom: TabBar(
                    indicatorColor: kMainColor,
                    onTap: (value) {
                      setState(() {
                        tabindex = value;
                      });
                    },
                    tabs: <Widget>[
                      Text('tv',
                        style: TextStyle(
                          color: tabindex == 0 ? Colors.black : kUnActiveColor,
                          fontSize: tabindex == 0 ? 16 : null,

                        ),),
                      Text('mobile',
                          style: TextStyle(
                            color: tabindex == 1 ? Colors.black : kUnActiveColor,
                            fontSize: tabindex == 1 ? 16 : null,

                          )),
                      Text('laptop',
                          style: TextStyle(
                            color: tabindex == 2 ? Colors.black : kUnActiveColor,
                            fontSize: tabindex == 2 ? 16 : null,

                          )),
                      Text('gaming',
                          style: TextStyle(
                            color: tabindex == 3 ? Colors.black : kUnActiveColor,
                            fontSize: tabindex == 3 ? 16 : null,

                          )),
                    ],
                  ),

                ),
                body: TabBarView(
                  children: <Widget>[

                    jacketveiw(),
                    mobileveiw(),
                    laptopveiw(),
                    playstationveiw(),

                  ],

                ),
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
                      BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart),label: 'cart',backgroundColor: Colors.green
                      )
                    ]
                ),


              )
          ),




          Material(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(

                height: MediaQuery
                    .of(context)
                    .size
                    .height * .1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                 IconButton(
                   onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>settingpage()));
                   },
                   icon: Icon(Icons.settings,
                     color: Colors.red,),
                 ),
                    IconButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>profilepage()));
                      },
                      icon: Icon(Icons.person,
                        color: Colors.yellowAccent,),
                    )
                  ],
                ),
              ),
            ),


          )
        ]
    );
  }

  Widget jacketveiw() {
    return Material(
      child: GridView.builder(
        itemCount: producetlist.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3.5 / 5,
          crossAxisSpacing: 17,
        ),
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(producetlist[index].image!),
                  InkWell(
                    onTap: () {
                      setState(() {
                        producetlist [index].favourite =
                        !producetlist[index].favourite!;
                      });
                    },
                    child: Icon(
                      producetlist[index].favourite == true
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              Text(producetlist[index].name!,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,),
              Text(producetlist[index].price.toString(),
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          );
        },
      ),
    );


  }

  Widget mobileveiw() {
    return
      Material(
        child: GridView.builder(
          itemCount: mobilelist.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3.5 / 5,
            crossAxisSpacing: 15,
          ),
          itemBuilder: (context, index) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image.asset(mobilelist[index].image!),
                      InkWell(
                        onTap: () {
                          setState(() {
                            mobilelist [index].favourite =
                            !mobilelist[index].favourite!;
                          });
                        },
                        child: Icon(
                          mobilelist[index].favourite == true
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Text(mobilelist[index].name!,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,),
                  Text(mobilelist[index].price.toString(),
                  style: TextStyle(
                    color: Colors.blue
                  ),),
                ],
              ),
            );
          },
        ),
      );
  }


  Widget laptopveiw() {
    return
      Scaffold(
        body: AnimationLimiter(
            child: GridView.builder(
                itemCount: mobilelist.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3.5 / 5,
                  crossAxisSpacing: 15,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return AnimationConfiguration.staggeredList(
                      position: index,
                      duration: const Duration(milliseconds: 375),
                      child: SlideAnimation(
                        verticalOffset: 50.0,
                        child: FadeInAnimation(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context,  producetinfo.id,arguments: laptoplist[index]);
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                    children: [
                                      Image.network(laptoplist[index].image!),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            laptoplist [index].favourite =
                                            !laptoplist[index].favourite!;
                                          });
                                        },
                                        child: Icon(
                                          laptoplist[index].favourite == true
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ]
                                ),
                                Text(laptoplist[index].name!,
                                maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(laptoplist[index].price.toString(),
                                style: TextStyle(
                                  color: Colors.blue
                                ),),
                              ],
                            ),
                          )
                          ,
                        ),
                      )


                  );
                })


        ),

      );
  }

  playstationveiw() {
    return
      Scaffold(
        body: AnimationLimiter(
            child: GridView.builder(
                itemCount: pslist.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3.5 / 5,
                  crossAxisSpacing: 15,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return AnimationConfiguration.staggeredList(
                      position: index,
                      duration: const Duration(milliseconds: 375),
                      child: SlideAnimation(
                        verticalOffset: 50.0,
                        child: FadeInAnimation(
                          child: GestureDetector(
                            onTap: (){
                        //      Navigator.pushNamed(context,  mobileinfo.id,arguments: pslist[index]);
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                    children: [
                                      Image.network(pslist[index].image!),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            pslist [index].favourite =
                                            !pslist[index].favourite!;
                                          });
                                        },
                                        child: Icon(
                                          pslist[index].favourite == true
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ]
                                ),
                                Text(pslist[index].name!,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                                Text(pslist[index].price.toString(),
                                style: TextStyle(
                                  color: Colors.blue
                                ),),
                              ],
                            ),
                          )
                          ,
                        ),
                      )


                  );
                })


        ),

      );
  }


}





