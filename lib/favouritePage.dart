import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class favouritePage extends StatefulWidget {
  const favouritePage({Key? key}) : super(key: key);

  @override
  _favouritePageState createState() => _favouritePageState();
}

class _favouritePageState extends State<favouritePage> {
  List<String> Names = [
    'Egypt','Roma','London','Paris','Dubai',
    'Egypt','Roma','London','Paris','Dubai',
    'Egypt','Roma','London','Paris','Dubai',
  ];
  List<String> Urls = [
    "https://images.pexels.com/photos/931881/pexels-photo-931881.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/2678456/pexels-photo-2678456.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/6398585/pexels-photo-6398585.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/2418469/pexels-photo-2418469.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/3769312/pexels-photo-3769312.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/931881/pexels-photo-931881.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/2678456/pexels-photo-2678456.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/6398585/pexels-photo-6398585.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/2418469/pexels-photo-2418469.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/3769312/pexels-photo-3769312.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/931881/pexels-photo-931881.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/2678456/pexels-photo-2678456.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/6398585/pexels-photo-6398585.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/2418469/pexels-photo-2418469.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/3769312/pexels-photo-3769312.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.blue.withOpacity(0),),
        backgroundColor: Colors.grey.shade300,
        title: Text('Favourite Page',style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (_, int index) => ListFavorite(this.Names[index],this.Urls[index]),
          itemCount: this.Names.length,
        ),
      ),
    );
  }
}

class ListFavorite extends StatelessWidget {
  final String name;
  final String imgurls;
  ListFavorite(this.name,this.imgurls);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left:20.0,right: 20.0,top: 10.0,bottom: 12.0),
      child: Container(
        margin: EdgeInsets.all(15.0),
        height: 150.0,
        child: Stack(
          children: [
            Positioned.fill(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      imgurls,
                      fit: BoxFit.cover,
                    ))),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                height: 120.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0)),
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.7),
                          Colors.transparent
                        ])),
              ),
            ),
            Positioned(
              top: 5.0,
              right:5.0,
              child: Row(
                children: [
                  Icon(Icons.bookmark,color: Colors.white,size: 28.0,),
                ],
              ),
            ),
            Positioned(
              bottom: 15.0,
              child: Row(
                children: [
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    name,
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
