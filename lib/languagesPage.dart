import 'dart:io';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class languagesPage extends StatefulWidget {
  @override
  _languagesPageState createState() => _languagesPageState();
}

class _languagesPageState extends State<languagesPage> {
  List<String> Locations = [
    'Mandarin Chinese',
    'Spanish',
    'English',
    'Arabic',
    'Hindi',
    'Bengali',
    'Portuguese',
    'Russian',
    'Japanese',
    'Marathi',
    'Turkish',
    'French',
    'German',
    'Italian',
    'Vietnamese',
    'Haka',
    'Hindi',
    'Bengali',
    'Portuguese',
    'Russian',
    'Japanese',
    'Marathi',
    'Turkish',
    'French',
    'German',
    'Italian',
    'Vietnamese',
    'Haka',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: searchAppBar(),
      body: Container(
        child: ListView.builder(
          itemBuilder: (_, int index) => languagescard(this.Locations[index]),
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
                      hintText: 'Search Languages',
                      hintStyle: TextStyle(color: Colors.white),
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class languagescard extends StatelessWidget {
  final String languages;
  languagescard(this.languages);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 17.5,
            child: Row(
              children: [
                SizedBox(width: 6.0,),
                Text(languages[0].toUpperCase()),
                Text(languages[1].toUpperCase()),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 10.0)),
          Text(
            languages,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
