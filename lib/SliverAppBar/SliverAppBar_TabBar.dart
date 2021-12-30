import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'image_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Widget Of The Week",
      home: Scaffold(
          body: DefaultTabController(
            length: 2,
            child: NestedScrollView(
              headerSliverBuilder: (context,value){
                return [
                  SliverAppBar(
                    title: Text('Sliver AppBar with Tab'),
                    bottom: TabBar(
                      tabs: [
                        Tab(icon: Icon(Icons.home),text: 'Home',),
                        Tab(icon: Icon(Icons.favorite),text: 'Favorite',),
                      ],
                    ),
                  )
                ];
              },
              body: TabBarView(
                  children: [
                    buildImages(),
                    buildImages(),
                  ]),

            ),
          )
      ),
    );
  }

  Widget buildImages() => GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
    ),
    itemCount: 20,
    itemBuilder: (context, index) => ImageWidget(index),
  );


}
