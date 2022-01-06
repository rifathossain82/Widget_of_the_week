import 'package:flutter/material.dart';

class Opacity_demo extends StatefulWidget {
  const Opacity_demo({Key? key}) : super(key: key);

  @override
  State<Opacity_demo> createState() => _Opacity_demoState();
}

class _Opacity_demoState extends State<Opacity_demo> {

  double opacity_=0.4;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            color: Colors.orange,
          ),
          SizedBox(height: 16,),
          Opacity(
            opacity: 0.0,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 16,),
          Container(
            height: 150,
            width: 150,
            color: Colors.lightGreen,
          ),
          SizedBox(height: 16,),
          AnimatedOpacity(
            duration: Duration(milliseconds: 4000),
            opacity: opacity_,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.red,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            opacity_=1;
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
