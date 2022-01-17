import 'package:flutter/material.dart';

class Home_intro extends StatelessWidget {
  const Home_intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
      ),
      body: Center(
        child: Text('Hello World.'),
      ),
    );
  }
}
