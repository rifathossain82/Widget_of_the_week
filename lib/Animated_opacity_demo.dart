import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Animated_opacity_demo extends StatefulWidget {
  const Animated_opacity_demo({Key? key}) : super(key: key);

  @override
  _Animated_opacity_demoState createState() => _Animated_opacity_demoState();
}

class _Animated_opacity_demoState extends State<Animated_opacity_demo> {
  var opacity_=0.6;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
              duration: Duration(milliseconds: 2000),
          opacity: opacity_,
          child: Image.asset('images/sandwich.jpg')
          ),
          CupertinoSlider(
              value: opacity_,
              min: 0.1,
              max: 1.0,
              onChanged: (value){
                setState(() {
                  opacity_=value;
                });
              }
          )
        ],
      ),
    );
  }
}
