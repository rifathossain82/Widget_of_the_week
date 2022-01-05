import 'package:flutter/material.dart';

class Fitted_box_demo extends StatelessWidget {
  const Fitted_box_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 250,
        width: 380,
        color: Colors.blue,
        child: FittedBox(
           fit: BoxFit.contain,
            alignment: Alignment.centerLeft,
            child: Image.asset('images/sandwich.jpg')
        ),
      ),
    );
  }
}
