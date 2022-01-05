import 'dart:math';

import 'package:flutter/material.dart';

class Slide_transition_demo extends StatefulWidget {
  const Slide_transition_demo({Key? key}) : super(key: key);

  @override
  _Slide_transition_demoState createState() => _Slide_transition_demoState();
}

class _Slide_transition_demoState extends State<Slide_transition_demo> with SingleTickerProviderStateMixin{
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 4000),
    )..repeat();


    animation=Tween<double>(
        begin: -1,
        end: 1
    ).animate(controller);
  }
  @override
  Widget build(BuildContext context) {


    return AnimatedBuilder(
        animation: animation,
        child: Center(child: FlutterLogo(size: 100,)),
        builder: (context,child){
          final width=MediaQuery.of(context).size.width;
          final x=animation.value*width;
          return Transform(
            transform: Matrix4.translationValues(x, 0, 0),
            child: child,
          );
        }
    );
  }
}
