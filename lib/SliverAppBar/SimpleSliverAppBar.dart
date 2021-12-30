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
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.blueGrey[900],
              leading: Icon(Icons.arrow_back_ios),
              expandedHeight: 200,
              pinned: true,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                title: Text('Sliver AppBar'),
                centerTitle: true,
                background: Image.asset("images/image1.png",fit: BoxFit.cover,),
              ),
              actions: [
                Icon(Icons.settings),
                SizedBox(width: 12,)
              ],
            ),
            buildImage(),
          ],
        ),
      ),
    );
  }


}

Widget buildImage() => SliverToBoxAdapter(
  child: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
      primary: false,
      shrinkWrap:true,
      itemCount: 20,
      itemBuilder: (context,index)=>ImageWidget(index)),
);