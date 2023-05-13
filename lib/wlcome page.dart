import 'package:final_session/signuppage.dart';
import 'package:final_session/Login.dart';
import 'package:flutter/material.dart';




class welcomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30 ,vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("welcome",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,

                    ),
                  ),
                  SizedBox(
                    height: 28,

                  ),
                  Text("SAMS STORE",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 25
                    ),)

                ],
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                    },
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(58)

                    ),
                    child: Text(
                      "login",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                    ),
                  ),
                  SizedBox(
                      height: 20
                  ),
                  MaterialButton(minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                    },
                    color: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(58)
                    ),
                    child: Text(
                      "sign up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,

                      ),
                    ),
                  )

                ],
              )


            ],
          ),
        ),
      ),
    );
  }
}
