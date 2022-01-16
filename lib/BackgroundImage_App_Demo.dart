import 'package:flutter/material.dart';
import 'dart:ui';

class BackgroundImage_app_demo extends StatefulWidget {
  const BackgroundImage_app_demo({Key? key}) : super(key: key);

  @override
  _BackgroundImage_app_demoState createState() =>
      _BackgroundImage_app_demoState();
}

class _BackgroundImage_app_demoState extends State<BackgroundImage_app_demo> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _background(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
              'Rifat Hossain',
              style: TextStyle(color: Colors.white, fontSize: 32),
            )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: 'Enter Age',
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                  )
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

Widget _background() {
  return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
              colors: [Colors.black38, Colors.black87],
              begin: Alignment.center,
              end: Alignment.bottomCenter)
          .createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
        image: AssetImage(
          'images/pizza.jpg',
        ),
        fit: BoxFit.cover,
                //colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken)
      ))));
}
