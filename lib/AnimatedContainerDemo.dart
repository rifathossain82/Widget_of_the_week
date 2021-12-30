import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

double height_ = 50;
double width_ = 50;
Color color = Colors.green;
BorderRadiusGeometry borderRadiusGeometry = BorderRadius.circular(8);


class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget Of The Week'),
        ),
        body: Home(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: () {
            setState(() {
              final random = Random();
              width_ = random.nextInt(300).toDouble();
              height_ = random.nextInt(300).toDouble();

              color = Color.fromRGBO(
                  random.nextInt(256),
                  random.nextInt(256),
                  random.nextInt(256),
                  1);

              borderRadiusGeometry=BorderRadius.circular(random.nextInt(100).toDouble());
            });
          },

        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        height: height_,
        width: width_,
        duration: Duration(seconds: 1),
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadiusGeometry,
        ),
        curve: Curves.fastOutSlowIn,
      ),
    );
  }
}

