import 'package:flutter/material.dart';
import 'package:safaryatproject/flightSearch.dart';
import 'package:safaryatproject/theHomePage.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:loading_animations/loading_animations.dart';

class loadingPage extends StatefulWidget {
  const loadingPage({ Key? key }) : super(key: key);

  @override
  State<loadingPage> createState() => _loadingPageState();
}

class _loadingPageState extends State<loadingPage> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }
  _navigatetohome()async{
    await Future.delayed(Duration(seconds: 5),(){});
    // The Screen it will Be Navigate to ...()
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> flightSearch()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Center(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DefaultTextStyle(
                      style: const TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                      child: AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          WavyAnimatedText('Loading ...'),
                        ],
                        isRepeatingAnimation: true,
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                    SizedBox(height: 30.0,),
                    LoadingBouncingGrid.square(
                      backgroundColor: Colors.blue,
                      size: 40.0,
                      duration: Duration(seconds: 3),
                    ),
                  ],
                ),
              )
          ),
        )
    );
  }
}