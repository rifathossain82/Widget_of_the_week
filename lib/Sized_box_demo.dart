import 'package:flutter/material.dart';

class Sized_box_demo extends StatelessWidget {
  const Sized_box_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 50,
        width: 100,
        child: Container(
          color: Colors.amberAccent,
            child: Center(child: Text('Rifat Hossain'))
        ),
      ),
    );
  }
}
