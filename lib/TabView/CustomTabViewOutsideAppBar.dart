import 'package:flutter/cupertino.dart';
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
      title: "Widget Of The Week",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom TabBar'),
          centerTitle: true,
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
    bool t=true;
    return DefaultTabController(
      length: 2,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Image(
                image: AssetImage("images/image1.png"),
                height: 200,
                width: 300,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 15),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TabBar(
                    indicator: BoxDecoration(
                      color: Colors.blueGrey[900],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    tabs: [
                      Tab(
                        text: 'Month',
                      ),
                      Tab(
                        text: 'Year',
                      ),
                    ]),
              ),
              SizedBox(height: 300,
                child: TabBarView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Center(child: Text('January',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blueGrey[800],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Center(child: Text('2021',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),)),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blueGrey[800],
                        ),
                      ),
                    ),
                  ],

                ),),
            ],
          ),
        ),
      ),
    );
  }
}
