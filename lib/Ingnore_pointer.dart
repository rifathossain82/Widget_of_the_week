import 'package:flutter/material.dart';

class Ignore_pointer_demo extends StatelessWidget {
  const Ignore_pointer_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IgnorePointer(
        ignoring: false,
        child: RaisedButton(
          onPressed: (){
            print('you just click');
          },
          child: Text('click me'),
        ),
      ),
    );
  }
}
