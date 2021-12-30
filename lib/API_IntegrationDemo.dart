import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void getData() async{
    try{var response=await Dio().get("https://restcountries.com/v3.1/all");
    print(response.data.length);}
    catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "API Integration Flutter",
      theme: ThemeData(primarySwatch: Colors.orange,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Scaffold(
        appBar: AppBar(
          title: Text('API Integration',style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.blueGrey[900],
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

    return Center(
      child: Text('Rest api with flutter',style: TextStyle(fontSize: 22),),
    );
  }
}
