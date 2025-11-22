import 'dart:io';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:safaryat/calenderDate.dart';
import 'package:safaryat/flightSearch.dart';
import 'package:safaryat/login.dart';
import 'package:safaryat/theHomePage.dart';

import 'flightPassengersPage.dart';
import 'loadingPage.dart';

class flightInfo extends StatefulWidget {
  @override
  _flightInfoState createState() => _flightInfoState();
}

class _flightInfoState extends State<flightInfo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flights Search'),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> theHomePage()));
            },
            icon: Icon(Icons.arrow_back),
          ),
          backgroundColor: Colors.blue[800],
          elevation: 15.0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              //Network Image or Solid Color
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 2.0,
            tabs: [
              Tab(
                text: 'ONE-WAY',
              ),
              Tab(
                text: 'ROUND TRIP',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            flightinfo(),
            flightinfo(),
          ],
        ),
      ),
    );
  }
}

var selectedPaymentIndex = 0;
class flightinfo extends StatefulWidget {

  @override
  _flightinfoState createState() => _flightinfoState();
}

class _flightinfoState extends State<flightinfo> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          padding: EdgeInsets.only(left: 0.0, top: 25.0, right: 30.0),
          child: Column(
            children: <Widget>[
              Container(
                width: 300.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.planeDeparture,
                        size: 18.0,
                        color: Colors.grey.shade700,
                      ),
                      SizedBox(
                        width: 35.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          //We Should to make Navigate Function ,
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Egypt',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Deputure',
                              style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 80),
                width: 300,
                height: 1.5,
                color: Colors.grey.shade400,
              ),
              Container(
                width: 300.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.planeArrival,
                        size: 18.0,
                        color: Colors.grey.shade700,
                      ),
                      SizedBox(
                        width: 35.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          //We Should to make Navigate Function , || But i have some Erros in Context
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Dubai',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Arrival',
                              style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 80),
                width: 300,
                height: 1.5,
                color: Colors.grey.shade400,
              ),
              Container(
                width: 300.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.calendarAlt,
                        size: 18.0,
                        color: Colors.grey.shade700,
                      ),
                      SizedBox(
                        width: 35.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          //We Should to make Navigate Function , ||
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Calender()));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Tue, 12 Oct',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Departure Date',
                              style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      Visibility(
                        child: Container(
                          margin: EdgeInsets.only(left: 15),
                          width: 1.0,
                          height: 150.0,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      Visibility(
                        visible: true,
                        child: GestureDetector(
                          onTap: () {
                            //We Should to make Navigate Function , || But i have some Erros in Context
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Calender()));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Sat, 6 Dec',
                                  style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'Arrival Date',
                                  style: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 80),
                width: 300,
                height: 1.5,
                color: Colors.grey.shade400,
              ),
              Container(
                width: 300.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.userFriends,
                        size: 18.0,
                        color: Colors.grey.shade700,
                      ),
                      SizedBox(
                        width: 35.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          //We Should to make Navigate Function ,
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> flightPassengers()));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '1 Adult',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Passengers',
                              style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 180.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: RaisedButton(
                  onPressed: () {
                    // Navigate Function to Any Page
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> loadingPage()));
                  },
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                            Color(0xFF42A5F5),
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                    child: Text('SEARCH YOUR FLIGHTS',
                        style: TextStyle(fontSize: 20)),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
