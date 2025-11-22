import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:safaryatproject/theHomePage.dart';
import 'package:safaryatproject/widgets/palette.dart';
import 'widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyBooking extends StatefulWidget {
  const MyBooking({ Key? key }) : super(key: key);

  @override
  _MyBookingState createState() => _MyBookingState();
}

class _MyBookingState extends State<MyBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.blue.withOpacity(0),),
        backgroundColor: Colors.white,
        title: Text('My Booking',style: TextStyle(color: Colors.black),),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.all(8.0),
              child: ListView(
                children: [
                  SizedBox(height: 30,),
                  boxBooking(),
                  SizedBox(height: 20.0,),
                  boxBooking(),
                  SizedBox(height: 20.0,),
                  boxBooking(),
                  SizedBox(height: 20.0,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class boxBooking extends StatelessWidget {
  const boxBooking({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(color: Colors.black12,spreadRadius: 2.0,blurRadius: 5.0)
          ]
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),bottomLeft: Radius.circular(10.0)),
            child: Image.network('https://images.pexels.com/photos/4825701/pexels-photo-4825701.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',width: 80.0,height: 80.0,fit: BoxFit.cover,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Stars Hotel'),
                Text('Eating | Drikning | Playing | Bool | Sea',
                  style: TextStyle(fontSize: 12.0,color: Colors.black54),maxLines: 1,),
                Text('\$2350',style: TextStyle(fontSize: 12.0,color: Colors.black54),),
              ],
            ),
          )
        ],
      ),
    );
  }
}