import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:safaryatproject/languagesPage.dart';
import 'package:safaryatproject/locationsPage.dart';
import 'package:safaryatproject/profileEdit.dart';
import 'package:safaryatproject/startpage.dart';
import 'package:safaryatproject/theHomePage.dart';

import 'favouritePage.dart';
import 'myBooking.dart';

class settingsPage extends StatefulWidget {

  @override
  _settingsPageState createState() => _settingsPageState();
}

class _settingsPageState extends State<settingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.blue.withOpacity(0),),
        backgroundColor: Colors.grey.shade200,
        title: Text('Settings',style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left:16.0 ,top: 12.0 ,right: 16.0,bottom: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget> [
            Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              color: Colors.blue[800],
              child: ListTile(
                onTap: (){
                  // Navigate Function to Any Page U Want
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> profileEdit()));
                },
                title: Text(
                  'Monica Alecandro',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
                ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/4870842/pexels-photo-4870842.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                ),
                trailing: Icon(Icons.edit,color: Colors.white,),
              ),
            ),
            SizedBox(height: 10.0,),
            Card(
              elevation: 4.0,
              margin: EdgeInsets.fromLTRB(32.0,8.0,32.0,16.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children:<Widget> [
                  ListTile(
                    leading: Icon(FontAwesomeIcons.dollarSign,color: Colors.blue[800],),
                    title: Text('Change Currency'),
                    trailing: Icon(Icons.keyboard_arrow_right_rounded),
                    onTap: (){
                      //Navigation To Any Page U Want
                    },
                  ),
                  listDivider(),
                  ListTile(
                    leading: Icon(FontAwesomeIcons.language,color: Colors.blue[800],),
                    title: Text('Change Language'),
                    trailing: Icon(Icons.keyboard_arrow_right_rounded),
                    onTap: (){
                      //Navigation To Any Page U Want languagesPage
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> languagesPage()));
                    },
                  ),
                  listDivider(),
                  ListTile(
                    leading: Icon(FontAwesomeIcons.mapMarkerAlt,color: Colors.blue[800],),
                    title: Text('Change Location'),
                    trailing: Icon(Icons.keyboard_arrow_right_rounded),
                    onTap: (){
                      //Navigation To Any Page U Want
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> locationPage()));
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Text('Notification Settings',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.indigo),),
            SwitchListTile(
              activeColor: Colors.blue[800],
              contentPadding: EdgeInsets.all(0),
              value: true,
              title: Text('Update Notification'),
              onChanged: (value){},
            ),
            SwitchListTile(
              activeColor: Colors.blue[800],
              contentPadding: EdgeInsets.all(0),
              value: true,
              title: Text('Cash Notification'),
              onChanged: (value){

              },
            ),
            SwitchListTile(
              activeColor: Colors.blue[800],
              contentPadding: EdgeInsets.all(0),
              value: false,
              title: Text('UnRead Notification'),
              onChanged: null,
            ),
            SwitchListTile(
              activeColor: Colors.blue[800],
              contentPadding: EdgeInsets.all(0),
              value: true,
              title: Text('Reciecved Notification'),
              onChanged: (value){},
            ),
            SizedBox(height: 35.0,),
            Center(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    side: BorderSide(
                      color: Colors.blue,
                      width: 1.5,
                    )
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> StartPage()));
                },
                child: Text('SIGN OUT',style: TextStyle(fontSize: 16.0,letterSpacing: 2.2,color: Colors.black),),),
            )
          ],
        ),
      ),
    );
  }

  Container listDivider() => Container(margin: EdgeInsets.symmetric(horizontal: 8.0), width: double.infinity,height: 1.0,color: Colors.grey.shade400,);
}