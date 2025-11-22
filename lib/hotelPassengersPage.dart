import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:safaryatproject/flightInfo.dart';
import 'package:safaryatproject/hotelInfo.dart';
import 'package:safaryatproject/theHomePage.dart';
import 'package:safaryatproject/widgets/palette.dart';
import 'widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class hotelPassengers extends StatefulWidget {
  const hotelPassengers({ Key? key }) : super(key: key);

  @override
  _hotelPassengersState createState() => _hotelPassengersState();
}

class _hotelPassengersState extends State<hotelPassengers> {
  int Rooms = 0,
      counterc = 0,
      counterb = 0;
  void increamentR(){
    setState(() {
      Rooms +=1;
    });
  }
  void decreamentR(){
    setState(() {
      if(Rooms>0){
        Rooms -=1;
      }else{
        Rooms = 0;
      }
    });
  }
  void increamentc(){
    setState(() {
      counterc +=1;
    });
  }
  void decreamentc(){
    setState(() {
      if(counterc>0){
        counterc -=1;
      }else{
        counterc = 0;
      }
    });
  }
  void increamentb(){
    setState(() {
      counterb +=1;
    });
  }
  void decreamentb(){
    setState(() {
      if(counterb>0){
        counterb -=1;
      }else{
        counterb = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rooms & Persons'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> hotelInfo()));
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> hotelInfo()));
            },
            icon: Icon(Icons.done_rounded),
          ),
        ],
        backgroundColor: Colors.blue[800],
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          // color: Colors.black12,
        ),
        child: Column(
          children:<Widget> [
            Padding(
              padding:  EdgeInsets.only(left:12.0,top: 20.0,right: 12.0),
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.bed,color: Colors.grey.shade600,),
                  SizedBox(width: 20.0,),
                  Column(
                    children: [
                      Text('Rooms',style: TextStyle(fontSize: 18.0,),),
                      SizedBox(height: 5.0),
                      // Text('\(>12 years\)',style: TextStyle(fontSize: 12,color: Colors.grey.shade600),),
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: IconButton(
                      onPressed: (){
                        increamentR();
                      },
                      icon: Icon(Icons.add,size: 15.0,),
                    ),
                  ),
                  SizedBox(width: 5.0,),
                  Text('$Rooms',style: TextStyle(fontSize: 18),),
                  SizedBox(width: 5.0,),
                  Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: IconButton(
                      onPressed: (){
                        decreamentR();
                      },
                      icon: Icon(Icons.remove,size: 15.0,),
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: Colors.grey.shade400,thickness: 1.5,height: 45,indent: 55,),
            Padding(
              padding:  EdgeInsets.only(left:12.0,right: 12.0),
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.male,color: Colors.grey.shade600,),
                  SizedBox(width: 20.0,),
                  Column(
                    children: [
                      Text('Adults',style: TextStyle(fontSize: 18.0,),),
                      SizedBox(height: 5.0),
                      Text('\(>17 years\)',style: TextStyle(fontSize: 12,color: Colors.grey.shade600),),
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: IconButton(
                      onPressed: (){
                        increamentc();
                      },
                      icon: Icon(Icons.add,size: 15.0,),
                    ),
                  ),
                  SizedBox(width: 5.0,),
                  Text('$counterc',style: TextStyle(fontSize: 18),),
                  SizedBox(width: 5.0,),
                  Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: IconButton(
                      onPressed: (){
                        decreamentc();
                      },
                      icon: Icon(Icons.remove,size: 15.0,),
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: Colors.grey.shade400,thickness: 1.5,height: 45,indent: 55,),
            Padding(
              padding:  EdgeInsets.only(left:12.0,right: 12.0),
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.child,color: Colors.grey.shade600,),
                  SizedBox(width: 20.0,),
                  Column(
                    children: [
                      Text('Children',style: TextStyle(fontSize: 18.0,),),
                      SizedBox(height: 5.0),
                      Text('\(<=17  years\)',style: TextStyle(fontSize: 12,color: Colors.grey.shade600),),
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: IconButton(
                      onPressed: (){
                        increamentb();
                      },
                      icon: Icon(Icons.add,size: 15.0,),
                    ),
                  ),
                  SizedBox(width: 5.0,),
                  Text('$counterb',style: TextStyle(fontSize: 18),),
                  SizedBox(width: 5.0,),
                  Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: IconButton(
                      onPressed: (){
                        decreamentb();
                      },
                      icon: Icon(Icons.remove,size: 15.0,),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}