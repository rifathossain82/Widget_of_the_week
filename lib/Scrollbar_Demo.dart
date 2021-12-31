import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Scrollbar_Demo extends StatefulWidget {
  const Scrollbar_Demo({Key? key}) : super(key: key);

  @override
  _Scrollbar_DemoState createState() => _Scrollbar_DemoState();
}
List<String> name=[
  'Rifat Hossain',
  'Rasel Miyah',
  'Joabayer Hossain',
  'Kawchar Uddin',
  'Faruk Hossain',
  'Jillur Miyah',
  'kamal Hossain',
  'kamal Hossain',
  'kamal Hossain',
  'kamal Hossain',
  'kamal Hossain',
  'kamal Hossain',
  'kamal Hossain',
  'kamal Hossain',
  'kamal Hossain',
  'kamal Hossain',
  'kamal Hossain',
  'kamal Hossain',
  'kamal Hossain',
  'kamal Hossain',
  'kamal Hossain',
  'kamal Hossain',
  'kamal Hossain',
  'kamal Hossain',
];

class _Scrollbar_DemoState extends State<Scrollbar_Demo> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
        showTrackOnHover: false,
        radius: Radius.circular(0),
        hoverThickness: 15,
        interactive: true,
        scrollbarOrientation: ScrollbarOrientation.top,
        thickness: 15,
        child: ListView.builder(
          itemCount: name.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                color: Colors.red,
                height: 120,
                width: 100,
                child: Text('${name[index]}',style: TextStyle(color: Colors.white),),
              ),
            );
            }
        )
    );
  }
}
