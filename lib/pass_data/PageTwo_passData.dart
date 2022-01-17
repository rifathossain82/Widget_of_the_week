import 'package:flutter/material.dart';

class PageTwo_passData extends StatelessWidget {
  PageTwo_passData({Key? key,required this.name}) : super(key: key);

  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Receiver Page'),
      ),
      body: Center(
        child: Text('Your name : ${name}'),
      ),
    );
  }
}
