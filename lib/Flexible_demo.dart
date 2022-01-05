import 'package:flutter/material.dart';

class Flexible_demo extends StatelessWidget {
  const Flexible_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 3,
          child: Container(
            color: Colors.red,
          ),
        ),
        Flexible(
          flex: 4,
            child: Row(
              children: [
                Flexible(child: Container(color: Colors.blue,)),
                Flexible(child: Container(color: Colors.blueGrey[900],)),
              ],
            )
        ),
        Flexible(
          flex: 2,
          child: Container(
            color: Colors.orange,
          ),
        )
      ],
    );
  }
}


/*
Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 150,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 150,
                color: Colors.red,
              ),
            ],
          ),
        ),
        Flexible(
          child: Container(
            height: 250,
            color: Colors.orange,
          ),
        ),
        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 100,
                color: Colors.red,
              ),
              Container(
                width: 150,
                height: 100,
                color: Colors.red,
              ),
            ],
          ),
        ),
 */