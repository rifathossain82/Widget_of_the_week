import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'dart:ui';

class Image_filtered_demo extends StatelessWidget {
  const Image_filtered_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 300,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 3,sigmaY: 3),
              child: Image.asset('images/image1.png'),
            ),
          ),
          Container(
            height: 200,
            width: 200,
            child: ImageFiltered(
              imageFilter: ImageFilter.matrix(
                //rotationX for upper image
                //rotationZ for left rotate
                //rotationY for shift left side
                Matrix4.rotationY(0.4).storage

              ),
              child: Image.asset('images/image1.png'),
            ),
          ),
        ],
      )
    );
  }

  ImageFilter get _imageFilter => ImageFilter.blur(sigmaX: 10, sigmaY: 10);
}
