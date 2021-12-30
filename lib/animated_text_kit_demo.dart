import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Animated_text_kit_demo extends StatefulWidget {
  const Animated_text_kit_demo({Key? key}) : super(key: key);

  @override
  _Animated_text_kit_demoState createState() => _Animated_text_kit_demoState();
}

class _Animated_text_kit_demoState extends State<Animated_text_kit_demo> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
          child: Column(
            children: [
              ColorizeAnimatedTextKit(
                colors: [Colors.red,Colors.green],
                text: ['Rifat','Kawchar'],
                textStyle: TextStyle(fontSize: 22),
              ),
              FadeAnimatedTextKit(
                  text: ['Hello World','Common text','General Passwrod'],
                textStyle: TextStyle(fontSize: 22,color: Colors.white),
              ),
              FlickerAnimatedTextKit(
                  text: ['Wow','Extra'],
                textStyle: TextStyle(fontSize: 22,color: Colors.white),
              ),
              RotateAnimatedTextKit(
                  text: ['Table','Chair','Bed'],
                textStyle: TextStyle(fontSize: 22,color: Colors.white),
              ),
              ScaleAnimatedTextKit(
                text: ['Table','Chair','Bed'],
                textStyle: TextStyle(fontSize: 22,color: Colors.white),
              ),
              TypewriterAnimatedTextKit(
                curve: Curves.bounceIn,
                text: ['Table','Chair','Bed'],
                textStyle: TextStyle(fontSize: 22,color: Colors.white),
              ),
              TyperAnimatedTextKit(
                text: ['Table','Chair','Bed'],
                textStyle: TextStyle(fontSize: 22,color: Colors.white),
              ),
              WavyAnimatedTextKit(
                text: ['Table','Chair','Bed'],
                textStyle: TextStyle(fontSize: 22,color: Colors.white),
              ),
              
            ],
          ),
        )
    );
  }
}
