import 'dart:async';

import 'package:flutter/material.dart';
import 'package:widget_of_the_week/spalash_screen/Home_splash.dart';

class Main_page extends StatefulWidget {
  const Main_page({Key? key}) : super(key: key);

  @override
  _Main_pageState createState() => _Main_pageState();
}

class _Main_pageState extends State<Main_page> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Text('Splash Screen Demo'),
      ),
    );
  }
}
