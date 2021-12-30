import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_of_the_week/PageView/HomePage.dart';
import 'package:widget_of_the_week/TabView/FavoritePage.dart';
import 'package:widget_of_the_week/TabView/HomePage.dart';
import 'package:widget_of_the_week/TabView/SettingsPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

PageController controller=PageController(
  initialPage: 1,
);


class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TabView In Flutter",
      home: Scaffold(
        body: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Text('Tab View In Flutter'),
              centerTitle: true,
              backgroundColor: CupertinoColors.activeGreen,
              bottom: TabBar(
                  indicatorColor: Colors.blueGrey,
                  labelColor: Colors.white,
                  indicatorWeight: 2,
                  unselectedLabelColor: Colors.white60,

                  tabs: [
                    Icon(Icons.home,size: 30,),
                    Icon(Icons.favorite,size: 30,),
                    Icon(Icons.settings,size: 30,),
                  ]),
            ),
            body: TabBarView(
                children: [
                  HomePage(),
                  FavoritePage(),
                  SettingsPage(),
                ]),
          ),
        ),
      ),
    );
  }
}

