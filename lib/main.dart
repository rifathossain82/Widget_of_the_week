import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:widget_of_the_week/PageView/HomePage.dart';
import 'package:widget_of_the_week/animated_text_kit_demo.dart';
import 'package:widget_of_the_week/sensor/Sensor2.dart';
import 'package:widget_of_the_week/sensor/Sensor_plus.dart';

import 'TabPageSelector_Demo.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

final appbar = AppBar(
  title: TyperAnimatedTextKit(
    text: ['Widget Of The Week'],
    textStyle: TextStyle(fontSize: 22),
  ),
  elevation: 0,
  backgroundColor: Colors.transparent,
  centerTitle: true,
);

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Widget Of The Week',
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.blueGrey[900],
          appBar: appbar,
          body: Animated_text_kit_demo(),
        )
    );
  }
}
