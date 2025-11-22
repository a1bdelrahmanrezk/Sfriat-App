import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:safaryat/CustomShapeClipper.dart';
import 'package:safaryat/hotelDetails.dart';
import 'package:safaryat/hotelInfo.dart';
import 'package:safaryat/theHomePage.dart';

import 'fliterHotelPage.dart';

class hotelSearch extends StatefulWidget {

  @override
  _hotelSearchState createState() => _hotelSearchState();
}

class _hotelSearchState extends State<hotelSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Search Hotels',),
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> hotelInfo()));
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> fliterHotelPage()));
          }, icon: Icon(Icons.tune_rounded))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children:<Widget> [
            hotelSearchTopPart(),
            SizedBox(height: 20.0,),
            hotelSearchBodyPart(),
          ],
        ),
      ),
    );
  }
}
class hotelSearchTopPart extends StatefulWidget {
  const hotelSearchTopPart({ Key? key }) : super(key: key);

  @override
  _hotelSearchTopPartState createState() => _hotelSearchTopPartState();
}

class _hotelSearchTopPartState extends State<hotelSearchTopPart> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            color: Colors.blue[800],
            // decoration: BoxDecoration(
            //   image: DecorationImage(image: AssetImage('assets/images/flight.jpg'))
            // ),
            height: 160.0,
          ),
        ),
        Column(
          children: [
            SizedBox(height: 25.0,),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              elevation: 10.0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal:16.0,vertical: 15.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Search About Hotels',
                              hintStyle: TextStyle(color: Colors.grey.shade700 ,fontSize: 18),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 25.0, vertical: 12.0),
                              suffixIcon: Material(
                                elevation: 2.0,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.black45,
                                ),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                          // Divider(color: Colors.grey,height: 20.0,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
class hotelSearchBodyPart extends StatefulWidget {
  const hotelSearchBodyPart({ Key? key }) : super(key: key);

  @override
  _hotelSearchBodyPartState createState() => _hotelSearchBodyPartState();
}

class _hotelSearchBodyPartState extends State<hotelSearchBodyPart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('Best Deals for Next 6 Months'),
          ),
          SizedBox(height: 10.0,),
          ///////Add here what U want to add to more containers to page and do some scroll single child view
          ListView(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: [
              HotelCard(),
              HotelCard(),
              HotelCard(),
              HotelCard(),
              HotelCard(),
            ],
          )
        ],
      ),
    );
  }
}
class HotelCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Stack(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> hotelDetailes()));
            },
            child: Container(
              margin: EdgeInsets.only(right: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0),),
                border: Border.all(color: Colors.grey.shade400),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(

                      image: NetworkImage('https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                    ),
                    SizedBox(height: 10.0,),
                    Row(
                      children: [
                        Text('\$4500',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                        SizedBox(width: 4.0,),
                        Text('\$9210',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,decoration: TextDecoration.lineThrough,color: Colors.grey),),
                      ],
                    ),
                    Wrap(
                      runSpacing: -8.0,
                      spacing: 8.0,
                      children: [
                        hoteldetails(Icons.description_rounded,'Hotel 7 Star'),
                        hoteldetails(Icons.calendar_today,'Oct 2021'),
                        hoteldetails(Icons.hotel,'Jet Waret'),
                        hoteldetails(Icons.star,'4.4'),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 10.0,
            right: 0.0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 4.0),
              child: Text('55%',style: TextStyle(color: Colors.white,fontSize: 14.0,fontWeight: FontWeight.bold),),
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
            ),
          )
        ],
      ),
    );
  }
}
class hoteldetails extends StatelessWidget {
  final IconData iconData;
  final String label;
  hoteldetails(this.iconData,this.label);

  @override
  Widget build(BuildContext context) {
    return RawChip(
      label: Text(label),
      labelStyle: TextStyle(color: Colors.black,fontSize: 14.0),
      backgroundColor: Colors.blue.withOpacity(0.4),
      avatar: Icon(iconData,size: 14.0,),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
    );
  }
}