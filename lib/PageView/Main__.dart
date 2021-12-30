import 'package:flutter/material.dart';
import 'package:widget_of_the_week/PageView/HomePage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

final appbar = AppBar(
  title: Text(
    'Widget Of The Week',
    style: TextStyle(fontWeight: FontWeight.bold),
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
          body: Home_PageView(),
        )
    );
  }
}
