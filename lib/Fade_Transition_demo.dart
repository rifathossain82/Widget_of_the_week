import 'dart:math';

import 'package:flutter/material.dart';
import 'package:widget_of_the_week/Slider_demo.dart';

class Fade_Transition_demo extends StatefulWidget {
  const Fade_Transition_demo({Key? key}) : super(key: key);

  @override
  _Fade_Transition_demoState createState() => _Fade_Transition_demoState();
}

class _Fade_Transition_demoState extends State<Fade_Transition_demo> with SingleTickerProviderStateMixin{

 late AnimationController controller;
  late Animation<double> animation;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=AnimationController(vsync: this,duration: Duration(milliseconds: 3000));
    animation=Tween<double>(
      begin: 0,
      end: 1.0
    ).animate(controller);

    controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward();
    return Center(
      child: FadeTransition(
          opacity: animation,
        child: Container(
          height: 200,
          width: 200,
          color: Colors.red,
        ),
      ),
    );
  }
}
