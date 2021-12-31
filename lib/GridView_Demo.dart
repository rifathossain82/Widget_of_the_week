import 'dart:math';

import 'package:flutter/material.dart';

class Gridview_demo extends StatefulWidget {
  const Gridview_demo({Key? key}) : super(key: key);

  @override
  _Gridview_demoState createState() => _Gridview_demoState();
}

class _Gridview_demoState extends State<Gridview_demo> {

  List<int> number=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setnumber();
  }

  void setnumber() {
    number=[];
    for(int i=0;i<30;i++){
      number.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    print(number);
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: number.length,
        itemBuilder: (context,index){
          return Image.network('https://source.unsplash.com/random?sig=${number[index]}');
        }
    );
  }
}
