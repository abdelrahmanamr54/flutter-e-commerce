import 'package:flutter/material.dart';
import 'package:final_session/homescreen.dart';
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                      Text('Signup',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,

                        ),),

                      SizedBox(
                        height: 150,
                      ),

                      TextField(
                          decoration: InputDecoration(
                            hintText: 'userName',
                            prefixIcon: Icon(Icons.person),
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
                      MaterialButton(
                        color: Colors.blue,
                        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 80),
                        child: Text(
                          'sign up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,

                          ),

                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                        },),
                    ]
                )
            )
        )
    );
  }
}


