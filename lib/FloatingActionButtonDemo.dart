import 'package:flutter/material.dart';

void main(){
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
          floatingActionButton:FloatingActionButton(
            onPressed: (){},
            child: Icon(Icons.play_arrow),
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.orange,
            child: Container(height: 50,),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked
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
      child: Text('My Name Is Rifat'),
    );
  }
}
