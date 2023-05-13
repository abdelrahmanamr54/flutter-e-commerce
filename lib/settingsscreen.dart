import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:final_session/homescreen.dart';
class settingpage extends StatefulWidget {
  const settingpage({Key? key}) : super(key: key);

  @override
  State<settingpage> createState() => _settingpageState();
}

class _settingpageState extends State<settingpage> {
  bool valnotify1=true;
  bool valnotify2=false;
  bool valnotify3=false;
  onChangedfunction1(bool newvalue1){
    setState(() {
      valnotify1=newvalue1;
    });
  }
  onChangedfunction2(bool newvalue2){
    setState(() {
      valnotify2=newvalue2;
    });
  }
  onChangedfunction3(bool newvalue3){
    setState(() {
      valnotify3=newvalue3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'setting ',style: TextStyle(
          fontSize: 20,

        ),
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
          },
          icon: Icon(Icons.arrow_back,
          color: Colors.white,),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(Icons.person,
                color: Colors.blue,),
                SizedBox(
                  width: 10,
                ),
                Text('account',style:TextStyle(fontSize: 22,
                fontWeight: FontWeight.bold))
              ],
            ),
            Divider(height: 20,thickness: 1,),
            SizedBox(height: 10),
            buildAccountoption(context, "change password"),
            buildAccountoption(context, "content setting"),
            buildAccountoption(context, "social"),
            buildAccountoption(context, "language"),
            buildAccountoption(context, "privacy and security"),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(Icons.volume_up_outlined,
                color: Colors.blue,),
                SizedBox(
                  width: 10,
                ),
                Text('notifaction',style:
                  TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),)
              ],
            ),
            Divider(height: 20,thickness: 1,

            ),
            SizedBox(height: 10,),
            buildnotfication("theme dark", valnotify1, onChangedfunction1),
            buildnotfication("account active", valnotify2, onChangedfunction2),
            buildnotfication("opportunity", valnotify3, onChangedfunction3),
          ],
        ),
      ),
    )
    ;
  }
  Padding buildnotfication(String title ,bool value , Function onChangedMethod){
    return Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.grey,

        ),
        ),
        Transform.scale(scale: 0.7,
        child: CupertinoSwitch(
          activeColor: Colors.blue,
          trackColor: Colors.grey,
          value: value,
          onChanged: (bool newvalue){
            onChangedMethod(newvalue);
          },
        ),)
      ],

    ),);
  }
  GestureDetector buildAccountoption(BuildContext context,String title){
    return GestureDetector(
      onTap: (){
       showDialog(context: context, builder: (BuildContext context){
         return AlertDialog(
           title: Text(title),
           content: Column(
             mainAxisSize: MainAxisSize.min,
             children: [
               Text("options")
             ],
           ),
           actions: [
             TextButton(
               onPressed: (){

               },
               child:Text('close') ,
             )
           ],
         );
       }) ;
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8,horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey
            ),),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
