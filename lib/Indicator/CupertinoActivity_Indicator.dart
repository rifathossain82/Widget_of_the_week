import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivity_indigator extends StatelessWidget {
  const CupertinoActivity_indigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoActivityIndicator(
        radius: 50,
        animating: true,
        color: Colors.deepOrange,
      ),
    );
  }
}
