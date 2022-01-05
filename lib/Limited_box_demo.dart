import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:math' as Math;

class Limited_box_demo extends StatefulWidget {
  const Limited_box_demo({Key? key}) : super(key: key);

  @override
  _Limited_box_demoState createState() => _Limited_box_demoState();
}

class _Limited_box_demoState extends State<Limited_box_demo> {
  Color randomColor(){
    final rnd=Math.Random();
    return Color(rnd.nextInt(0xffffffff));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for(int i=0;i<20;i++)
          LimitedBox(
            maxHeight: 120,
              child: Container(color: randomColor())
          ),

      ],
    );
  }
}
