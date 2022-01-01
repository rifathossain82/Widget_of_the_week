import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Divider_demo extends StatelessWidget {
  const Divider_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 150,
            color: Colors.blue,
          ),
          Divider(
            color: Colors.green,
            height: 50,
            thickness: 10,
            endIndent: 70,
            indent: 70,
          ),
          Container(
            height: 100,
            width: 150,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
