
import 'package:flutter/material.dart';

class BgStart extends StatelessWidget{
  const BgStart({
    Key? key,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(colors: [Colors.black12 ,Colors.black12],
        begin: Alignment.bottomCenter,
        end: Alignment.center,
      ).createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage('assets/images/bgstartpage.png'),
          fit: BoxFit.cover,
        ),
        ),
      ),
    );
  }
}