import 'package:flutter/material.dart';

class Orientation_builder_demo extends StatefulWidget {
  const Orientation_builder_demo({Key? key}) : super(key: key);

  @override
  _Orientation_builder_demoState createState() => _Orientation_builder_demoState();
}

class _Orientation_builder_demoState extends State<Orientation_builder_demo> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (context,orientation){
          if(orientation == Orientation.portrait){
            return portrait_demo();
          }
          else{
            return landscape_demo();
          }
        }
    );
  }
  Widget portrait_demo(){
    return Center(
      child: Text('Portrait Screen'),
    );
  }

  Widget landscape_demo(){
    return Center(
      child: Text('Landscape Screen',style: TextStyle(fontSize: 28,color: Colors.red),),
    );
  }
}
