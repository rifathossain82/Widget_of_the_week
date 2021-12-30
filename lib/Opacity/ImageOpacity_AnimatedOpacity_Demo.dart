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

double opacity=0.0;


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
          onPressed: (){
            setState(() {
              opacity=1;
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimatedOpacity(
            opacity: opacity,
            duration: Duration(milliseconds: 800),
            child: Container(
              height: 200,
              width: 200,
              color: Colors.orange,
              child: Image.asset('images/image1.png',fit: BoxFit.cover,),
            ),
          ),
          Opacity(
            opacity: 0.0,
            child: Container(
              height: 80,
              width: 80,
              color: Colors.orange,
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.orange,
              child: Image.asset('images/image2.png',fit: BoxFit.cover,),
            ),
          ),
        ],
      ),
    );
  }
}

