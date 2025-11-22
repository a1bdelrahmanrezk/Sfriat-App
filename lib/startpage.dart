import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:safaryat/signup.dart';
import 'package:safaryat/theHomePage.dart';
import 'package:safaryat/widgets/palette.dart';
import 'login.dart';
import 'widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BgStart(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              children: [

                SizedBox(height: 80,),
                Container(
                    height:50,
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 25.0),
                    child:Text('Welcome With You in',style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,

                    ),)
                ),
                Container(

                  child: Center(
                    child: Text(
                      'Safaryat',style: sHeading,
                    ),

                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Center(
                    child: Text(
                      'We are glad to serve you',style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 180,
                          ),
                          Container(
                            width:250.0,
                            decoration: BoxDecoration(
                              color:Colors.white,borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: FlatButton(
                              onPressed:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));

                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 25.0),
                                child: Text(
                                  'Login',style: TextStyle(fontSize: 25.0 , color: Colors.black,),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            width:250.0,
                            decoration: BoxDecoration(
                                color:Colors.transparent,borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: Colors.white,width: 2.0)
                            ),
                            child: FlatButton(
                              onPressed:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Signup()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 25.0),
                                child: Text(
                                  'Sign up',style: TextStyle(fontSize: 25.0 , color: Colors.white,),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height:25.0,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> theHomePage()));
                            },
                            child: Text(

                              'Skip >>',
                              style: TextStyle(
                                  color:Colors.white,
                                  fontSize:15.0,
                                  fontWeight:FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

