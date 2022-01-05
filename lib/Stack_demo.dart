import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Stack_Demo extends StatefulWidget {
  const Stack_Demo({Key? key}) : super(key: key);

  @override
  _Stack_DemoState createState() => _Stack_DemoState();
}

class _Stack_DemoState extends State<Stack_Demo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            fit: StackFit.loose,
            alignment: Alignment.center,
            textDirection: TextDirection.rtl,
            children: [
              Container(
                height: 220,
                width: 220,
                  color: Colors.red,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.lightGreenAccent,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.blueGrey,
              ),
              Text('hello world'),
            ],
          ),
          SizedBox(height: 16,),
          Stack(
            overflow: Overflow.clip,
            children: [
              Container(
                height: 220,
                width: 220,
                color: Colors.orange,
              ),
              Positioned(
                child: Container(
                height: 160,
                width: 160,
                color: Colors.blueGrey[900],
              ),
                left: 100,
                top: 100,
              )
            ],
          ),
        ],
      ),
    );
  }
}
