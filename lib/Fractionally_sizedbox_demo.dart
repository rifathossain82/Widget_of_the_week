import 'package:flutter/material.dart';

class Fractionally_sized_box extends StatefulWidget {
  const Fractionally_sized_box({Key? key}) : super(key: key);

  @override
  _Fractionally_sized_boxState createState() => _Fractionally_sized_boxState();
}

class _Fractionally_sized_boxState extends State<Fractionally_sized_box> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Flexible(
        child: FractionallySizedBox(
          widthFactor: 0.7,
          heightFactor: 0.3,
          //alignment: ,
          child: Container(
            child: Center(child: Text('This is FractionallySizedBoX Demo',style: TextStyle(color: Colors.white),)),
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
