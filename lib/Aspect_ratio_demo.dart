import 'dart:ui';

import 'package:flutter/material.dart';

class Aspect_ratio_demo extends StatelessWidget {
  const Aspect_ratio_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16/6,
      child: Container(
        color: Colors.blue,
        child: Image.asset('images/large_img.jpg',fit: BoxFit.cover,),
      ),
    );
  }
}
