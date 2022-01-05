import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Animated_padding_demo extends StatefulWidget {
  const Animated_padding_demo({Key? key}) : super(key: key);

  @override
  _Animated_padding_demoState createState() => _Animated_padding_demoState();
}

class _Animated_padding_demoState extends State<Animated_padding_demo> {
  double padding_=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedPadding(
            duration: Duration(milliseconds: 1000),
              padding: EdgeInsets.all(padding_),
              curve: Curves.easeInOut,
              child: Image.asset('images/sandwich.jpg')
          ),
          CupertinoSlider(
              value: padding_,
              min: 1,
              max: 100,
              onChanged: (value){
                setState(() {
                  padding_=value;
                });
              }
          )
        ],
      ),
    );
  }
}
