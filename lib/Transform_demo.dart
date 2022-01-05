import 'dart:math';

import 'package:flutter/material.dart';


class Transform_demo extends StatelessWidget {
  const Transform_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //rotate
          Transform.rotate(
            angle: pi/4,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Icon(Icons.menu,color: Colors.white,size: 80,),
            ),
          ),
          SizedBox(height: 20,),
          //scale
          Transform.scale(
            scale: 1.5,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Icon(Icons.menu,color: Colors.white,size: 80,),
            ),
          ),
          SizedBox(height: 20,),
          //translate
          Transform.translate(
            offset: Offset(50, 50),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Icon(Icons.menu,color: Colors.white,size: 80,),
            ),
          ),
          SizedBox(height: 20,),
          //skew
          Transform(
            transform: Matrix4.skewX(0.3),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Icon(Icons.menu,color: Colors.white,size: 80,),
            ),
          ),
          SizedBox(height: 20,),
          //matrix identity
          Transform(
            transform: Matrix4.identity()
            ..setEntry(3, 2, 0.01)
            ..rotateX(0.6),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Icon(Icons.menu,color: Colors.white,size: 80,),
            ),
          ),
        ],
      ),
    );
  }
}
