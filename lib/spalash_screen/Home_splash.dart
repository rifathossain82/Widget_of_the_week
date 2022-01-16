import 'dart:async';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:widget_of_the_week/spalash_screen/Main_page.dart';

class Home_splash extends StatefulWidget {
  const Home_splash({Key? key}) : super(key: key);

  @override
  _Home_splashState createState() => _Home_splashState();
}

class _Home_splashState extends State<Home_splash> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Main_page()));
    });

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
          child: Lottie.network(
              'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
        ),
      );
  }
}
