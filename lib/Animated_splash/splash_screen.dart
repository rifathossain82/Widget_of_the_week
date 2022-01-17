import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:widget_of_the_week/Animated_splash/Home_screen.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({Key? key}) : super(key: key);

  @override
  _Splash_screenState createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {

  @override
  void initState() {
    Timer(Duration(seconds: 4), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home_screen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RiveAnimation.asset(''
          'animation/skills_demo.riv',
        fit: BoxFit.fitHeight,

        animations: [
          //'State Machine',
          'Intermediate_press',
          //'Expert_press',
          //'Beginner_press',
          //'Beginner',
          'Intermediate',
          //'Expert'
        ],
      ),
    );
  }
}
