import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Slider_demo extends StatefulWidget {
  const Slider_demo({Key? key}) : super(key: key);

  @override
  _Slider_demoState createState() => _Slider_demoState();
}

double value_=1;
double value_2=1;
double d=10;
double c=10;

class _Slider_demoState extends State<Slider_demo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //simple slider
          Slider(
              value: value_,
              min: 1,
              max: 100,
              onChanged: (value){
                setState(() {
                  value_=value;
                  print(value_);
                });
              }
          ),
          //divider slider
          Slider(
              value: value_2,
              min: 1,
              max: 100,
              divisions: 10,
              label: '${value_2}',
              onChanged: (value){
                setState(() {
                  value_2=value;
                  print(value_2);
                });
              }
          ),
          //customise slider
          Slider(
              max: 100,
              min: 10,
              value: d,
              divisions: 10,
              activeColor: Colors.black,
              inactiveColor: Colors.grey,
              onChanged: (value){
                setState(() {
                  d=value;
                });
              },
            label: '${d}',
          ),
          CupertinoSlider(
            min: 10,
              max: 100,
              value: c,
              activeColor: Colors.orange,
              thumbColor: Colors.orange,
              onChanged: (value){
              setState(() {
                c=value;
              });
              },
          )

        ],
      ),
    );
  }
}
