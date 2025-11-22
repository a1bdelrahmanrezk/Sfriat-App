import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:safaryat/login.dart';
import 'package:safaryat/theHomePage.dart';
import 'package:safaryat/widgets/palette.dart';
import 'widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResetPassword extends StatelessWidget {

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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                      },
                          icon: Icon(Icons.arrow_back,color: Colors.white,)
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20,top: 20),
                        height:150,
                        child: Text(
                          'Reset Password',style: TextStyle(fontSize: 50,color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 90,),
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
                                  color: Colors.grey[400]!.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                                    border: InputBorder.none,
                                    hintText: 'Email',
                                    hintStyle: TextStyle(fontSize: 20,color: Colors.white),
                                  ),
                                  style: sBodyText,
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.next,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0,),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[400]!.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                                    border: InputBorder.none,
                                    hintText: 'Verification Code',
                                    hintStyle: TextStyle(fontSize: 15,color: Colors.white),
                                  ),
                                  style: sBodyText,
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.next,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                'Resend Code',style: TextStyle(fontSize: 15.0 , color: Colors.white,fontWeight: FontWeight.w300),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 120,
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
                                    'Reset',style: TextStyle(fontSize: 22.0 , color: Colors.black,),
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

