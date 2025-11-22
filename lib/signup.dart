import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:safaryatproject/theHomePage.dart';
import 'package:safaryatproject/widgets/palette.dart';
import 'widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Signup extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height:150,
                    child: Center(
                      child: Text(
                        'Signup',style: sHeading,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10,),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white,width: 1.0),
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: IconButton(
                            onPressed: (){
                              //Navigate Function to Any Page
                            },
                            icon: Icon(FontAwesomeIcons.facebookF,color: Colors.white,size: 18.0,)),
                      ),
                      SizedBox(width: 15.0,),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white,width: 1.0),
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: IconButton(
                            onPressed: (){
                              //Navigate Function to Any Page
                            },
                            icon: Icon(FontAwesomeIcons.twitter,color: Colors.white,size: 18.0,)),
                      ),
                      SizedBox(width: 15.0,),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white,width: 1.0),
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: IconButton(
                            onPressed: (){
                              //Navigate Function to Any Page
                            },
                            icon: Icon(FontAwesomeIcons.google,color: Colors.white,size: 18.0,)),
                      ),
                      SizedBox(width: 15.0,),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('OR Login With',style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  SizedBox(height: 40.0,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(vertical: 20),
                                    enabledBorder:  UnderlineInputBorder(
                                      borderSide:  BorderSide(color: Colors.white ,width: 0.4),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white70,width: 1),
                                    ),
                                    hintText: 'Username',
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Icon(FontAwesomeIcons.user,color: Colors.white,size: 20.0,),
                                    ) ,
                                    hintStyle: sBodyText,
                                  ),
                                  style: sBodyText,
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.next,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(vertical: 20),
                                  enabledBorder:  UnderlineInputBorder(
                                    borderSide:  BorderSide(color: Colors.white ,width: 0.4),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white70,width: 1),
                                  ),

                                  hintText: 'Email',
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Icon(FontAwesomeIcons.envelope,color: Colors.white,size: 20.0,),
                                  ) ,
                                  hintStyle: sBodyText,
                                ),

                                style: sBodyText,
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(vertical: 20),
                                  enabledBorder:  UnderlineInputBorder(
                                    borderSide:  BorderSide(color: Colors.white ,width: 0.4),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white70,width: 1),
                                  ),

                                  hintText: 'Password',
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Icon(FontAwesomeIcons.unlockAlt,color: Colors.white,size: 20.0,),
                                  ) ,
                                  hintStyle: sBodyText,
                                ),
                                obscureText: true,
                                style: sBodyText,
                                keyboardType: TextInputType.visiblePassword,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(vertical: 20),
                                  enabledBorder:  UnderlineInputBorder(
                                    borderSide:  BorderSide(color: Colors.white ,width: 0.4),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white70,width: 1),
                                  ),

                                  hintText: 'Confirm Password',
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Icon(FontAwesomeIcons.redo,color: Colors.white,size: 18.0,),
                                  ) ,
                                  hintStyle: sBodyText,
                                ),
                                obscureText: true,
                                style: sBodyText,
                                keyboardType: TextInputType.visiblePassword,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 60,
                            ),
                            Container(
                              width:150.0,
                              decoration: BoxDecoration(
                                color:Colors.white,borderRadius: BorderRadius.circular(35.0),
                              ),
                              child: FlatButton(
                                onPressed:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> theHomePage()));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                                  child: Text(
                                    'SignUp',style: TextStyle(fontSize: 22.0 , color: Colors.black,),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

