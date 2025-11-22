import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:safaryatproject/favouritePage.dart';
import 'package:safaryatproject/flightInfo.dart';
import 'package:safaryatproject/hotelInfo.dart';
import 'package:safaryatproject/loadingPage.dart';
import 'package:safaryatproject/locationsPage.dart';
import 'package:safaryatproject/profileEdit.dart';
import 'package:safaryatproject/settingsPage.dart';
import 'package:safaryatproject/signup.dart';
import 'package:safaryatproject/startpage.dart';
import 'package:safaryatproject/theHomePage.dart';
import 'dart:async';
import 'calenderDate.dart';
import 'filterFlightPage.dart';
import 'flightPassengersPage.dart';
import 'filterHotelPage.dart';
import 'hotelDetails.dart';
import 'flightSearch.dart';
import 'hotelPassengersPage.dart';
import 'hotelSearch.dart';
import 'Login.dart';
import 'myBooking.dart';
import 'paymentMethods.dart';
import 'resetPassword.dart';
import 'verifytheBooking.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
      primaryColor: Colors.blueAccent, accentColor: Colors.lightBlue),
  debugShowCheckedModeBanner: false,
  home: SplashScreen(),
));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => StartPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              // color: Colors.blue,
              image: DecorationImage(
                image: AssetImage('assets/images/bgSplash.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Safaryat',
                        style: TextStyle(
                            fontSize: 70.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Colors.white),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20.0)),
                    Text(
                      'Online Booking For \n Flights & Hotels',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
