import 'dart:math';

import 'package:flutter/material.dart';
import 'package:widget_of_the_week/Slider_demo.dart';

class Animated_builder_demo extends StatefulWidget {
  const Animated_builder_demo({Key? key}) : super(key: key);

  @override
  _Animated_builder_demoState createState() => _Animated_builder_demoState();
}

class _Animated_builder_demoState extends State<Animated_builder_demo> with SingleTickerProviderStateMixin{
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=AnimationController(
        vsync: this,
      duration: Duration(milliseconds: 2000),
    )..repeat();


    animation=Tween<double>(
        begin: 0,
        end: 2*pi
    ).animate(controller);
  }
  @override
  Widget build(BuildContext context) {


    return AnimatedBuilder(
        animation: animation,
        child: Center(child: FlutterLogo(size: 100,)),
        builder: (context,child){
          return Transform.rotate(
              angle: animation.value,
            child: child,
          );
        }
    );
  }
}
