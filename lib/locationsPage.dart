import 'dart:io';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class locationPage extends StatefulWidget {
  @override
  _locationPageState createState() => _locationPageState();
}

class _locationPageState extends State<locationPage> {
  List<String> Locations = [
    'London',
    'Egypt',
    'United States',
    'Dubai',
    'Saudi Arabia',
    'Roma',
    'Paris',
    'Madrid',
    'Catalonia',
    'Berlin',
    'Barcelona',
    'Mombai',
    'China',
    'Wohan',
    'Shakalo',
    'Saudi Arabia',
    'Roma',
    'Paris',
    'Madrid',
    'Catalonia',
    'Berlin',
    'Barcelona',
    'Mombai',
    'China',
    'Wohan',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: searchAppBar(),
      body: Container(
        child: ListView.builder(
          itemBuilder: (_, int index) => locationscard(this.Locations[index]),
          itemCount: this.Locations.length,
        ),
      ),
    );
  }

  AppBar searchAppBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Colors.blue[800],
      title: Container(
        padding: EdgeInsets.symmetric(horizontal: 3.0),
        margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 12.0),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.25),
          borderRadius: BorderRadius.all(Radius.circular(22.0)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search Location',
                      hintStyle: TextStyle(color: Colors.white),
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.gps_fixed,
                      color: Colors.white,
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

class locationscard extends StatelessWidget {
  final String location;
  locationscard(this.location);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 15.0,
            child: Text(location[0]),
          ),
          Padding(padding: EdgeInsets.only(right: 10.0)),
          Text(
            location,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
