import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget Of The Week'),
        ),
        body: Home(),
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
    return Wrap(
      spacing: 10,
      runSpacing: 20,
      alignment: WrapAlignment.center,
      direction: Axis.horizontal,
      children: [
        Container(
          color: Colors.green,
          height: 60,
          width: 60,
        ),
        Container(
          color: Colors.orange,
          height: 60,
          width: 60,
        ),
        Container(
          color: Colors.green,
          height: 60,
          width: 60,
        ),
        Container(
          color: Colors.orange,
          height: 60,
          width: 60,
        ),
        Container(
          color: Colors.green,
          height: 60,
          width: 60,
        ),
        Container(
          color: Colors.orange,
          height: 60,
          width: 60,
        ),
        Container(
          color: Colors.green,
          height: 60,
          width: 60,
        ),
        Container(
          color: Colors.orange,
          height: 60,
          width: 60,
        ),
        Container(
          color: Colors.green,
          height: 60,
          width: 60,
        ),
        Container(
          color: Colors.orange,
          height: 60,
          width: 60,
        ),
      ],
    );
  }
}
