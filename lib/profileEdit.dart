import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:safaryat/settingsPage.dart';
import 'package:safaryat/startpage.dart';
import 'package:safaryat/theHomePage.dart';

class profileEdit extends StatefulWidget {
  @override
  _profileEditState createState() => _profileEditState();
}

class _profileEditState extends State<profileEdit> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue[800]),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16.0, top: 25.0, right: 16.0),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              SizedBox(
                height: 25.0,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130.0,
                      height: 130.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 4.0,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 10),
                            ),
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.pexels.com/photos/3586798/pexels-photo-3586798.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                              fit: BoxFit.cover)),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 0.0,
                      child: Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            color: Colors.blue[800],
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 4,
                                color:
                                Theme.of(context).scaffoldBackgroundColor)),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              textField('Full Name', 'Monica Alecandro', false),
              textField('E-Mail', 'monica@gmail.com', false),
              textField('Password', '*************', true),
              textField('Confirm Password', '*************', true),
              SizedBox(height:35.0 ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 50.0),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> settingsPage()));
                      },
                      child: Text('CANCEL',style: TextStyle(fontSize: 14.0,letterSpacing: 2.2,color: Colors.black),)
                  ),
                  RaisedButton(
                    onPressed: (){
                      // Navigate Fuction to any Page U want
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> settingsPage()));
                    },
                    color: Colors.blue,
                    splashColor: Colors.blue[700],
                    padding: EdgeInsets.symmetric(horizontal: 50.0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    elevation: 2,
                    child: Text('SAVE',style: TextStyle(fontSize: 14.0,letterSpacing: 2.2,color: Colors.white,),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget textField(String labelText, String Placeholder, bool isPasswordField) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 35.0,
      ),
      child: TextField(
        obscureText: isPasswordField? showPassword:false,
        decoration: InputDecoration(
            suffixIcon: isPasswordField
                ? IconButton(
                onPressed: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
                icon: Icon(
                  Icons.remove_red_eye,
                  size: 20.0,
                  color: Colors.blue[800],
                ))
                : null,
            contentPadding: EdgeInsets.only(bottom: 3.0),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: Placeholder,
            hintStyle: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
      ),
    );
  }
}
