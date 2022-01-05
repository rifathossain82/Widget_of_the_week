import 'package:flutter/material.dart';

class Animated_positioned_demo extends StatefulWidget {
  const Animated_positioned_demo({Key? key}) : super(key: key);

  @override
  _Animated_positioned_demoState createState() => _Animated_positioned_demoState();
}

class _Animated_positioned_demoState extends State<Animated_positioned_demo> {
  bool is_show=false;
  String txt='Show Message';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Positioned(child: Container(
                height: 200,
                width: 220,
                color: Colors.blue,
                child: Center(child: Text('Hello Programmer'),),
              ),
              ),
              AnimatedPositioned(
                top: is_show?0:70,
                  left: is_show?0:50,
                  child: Container(
                    height: 80,
                    width: 120,
                    color: Colors.orange,
                  ),
                  duration: Duration(seconds: 2),
              )
            ],
          ),
          SizedBox(height: 20,),
          ElevatedButton(
              onPressed: (){
                setState(() {
                  is_show=!is_show;
                  txt=is_show?'Hide Message':'Show Message';
                });
              },
              child: Text(txt)
          )
        ],
      ),
    );
  }
}
