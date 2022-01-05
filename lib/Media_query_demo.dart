import 'package:flutter/material.dart';

class Medial_query_demo extends StatefulWidget {
  const Medial_query_demo({Key? key}) : super(key: key);

  @override
  _Medial_query_demoState createState() => _Medial_query_demoState();
}

class _Medial_query_demoState extends State<Medial_query_demo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width*0.5, //gets half width of total width
          color: Colors.red,
        ),
        Container(
          width: MediaQuery.of(context).size.width*0.5,  //gets half width of total width
          color: Colors.orange,
        )
      ],
    );
  }
}
