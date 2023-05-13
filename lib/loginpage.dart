import 'package:final_session/signuppage.dart';
import 'package:flutter/material.dart';
import 'package:final_session/homescreen.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 80),
              Text('Login',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 38,


                ),),

              SizedBox(
                height: 150,
              ),

              TextField(
                  decoration: InputDecoration(
                    hintText: 'email',
                    prefixIcon: Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0
                        )
                    ),
                    disabledBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0
                        )
                    ),
                    focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0
                        )
                    ),

                  )

              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                  decoration: InputDecoration(
                    hintText: 'password',
                    prefixIcon: Icon(Icons.password),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0
                        )
                    ),
                    disabledBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0
                        )
                    ),
                    focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0
                        )
                    ),

                  )

              ),
              SizedBox(height: 50),
              MaterialButton (


                color: Colors.blue,
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 80),
                child: Text(
                  'log in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,

                  ),

                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                },),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                child: Text(
                  'forget password',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                },
                child: Text(
                  'sign up',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                ),
              )


            ],

          ),
        ),
      ),

    );
  }

}