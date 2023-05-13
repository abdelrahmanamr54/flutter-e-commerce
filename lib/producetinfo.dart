import 'package:final_session/constans.dart';
import ''
    'package:flutter/material.dart';
import 'package:final_session/model.dart';
import 'package:final_session/homescreen.dart';
class producetinfo extends StatefulWidget {
static String id="producet info";

  @override
  State<producetinfo> createState() => _producetinfoState();
}

class _producetinfoState extends State<producetinfo> {

int index=1;

 // final Map mobile= ModalRoute.of(context)?.settings.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(

          children: <Widget>[
            Container(

height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child:
              Image.network(laptoplist[index].image!,
              fit: BoxFit.fill,)
    ),

              Padding(
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()  ));
                        },
                        icon: Icon(Icons.arrow_back,
                          color: Colors.red,),
                      ),
                      IconButton(
                        onPressed: (){
                         // Navigator.push(context, MaterialPageRoute(builder: (context)=>profilepage()));
                        },
                        icon: Icon(Icons.add_shopping_cart,
                          color: Colors.yellow,),
                      )
                    ],
                  ),
                ),
              ),
Positioned(bottom: 0,
  child:   Column(
    children: <Widget>[
      Opacity(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height *.3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(laptoplist[index].name!,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              ),
              Text(
                'Processor :  AMD Ryzen™ 5 3450U Mobile Processor with Radeon™ Vega 8 Graphics'' Memory : 8 GB RAM 2400 MHz'
               ' Storage : 512GB M.2 PCIe NVMe Solid State DriveGraphics Card : AMD Radeon™ Vega 8 Graphi'
               ' Display : 15.6 FHD 1920x1080) ',style: TextStyle(fontWeight: FontWeight.bold),

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                   ClipOval(

                     child: Material (
                       color: Colors.yellow,
                        child: GestureDetector(
                          onTap: (){

                          },
                          child: SizedBox(
                            child: Icon(Icons.add),
                            height: 20,
                            width: 20,
                          ),
                        ),
                      ),
                   ),
                    Text('0',

                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold
                    ),),
                    ClipOval(

                      child: Material (
                        color: Colors.yellow,
                        child: GestureDetector(
                          onTap: (){

                          },

                          child: SizedBox(
                            child: Icon(Icons.add),
                            height: 20,
                            width: 20,
                          ),
                        ),
                      ),
                    )
                ],
              )
            ],
          ),
        ),
        opacity:.5 ,
      ),


      ButtonTheme(
        minWidth: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height *.1,
        child: RaisedButton(

shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
),

          onPressed: (){



          },



          child: Text("add to cart",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
color: Colors.yellow,

        ),
      ),
    ],
  ),
)




                ],
              ),
    );
  }
}
