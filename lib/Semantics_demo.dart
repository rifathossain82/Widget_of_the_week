import 'package:flutter/material.dart';

class Semantics_demo extends StatelessWidget {
  const Semantics_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Semantics(
        label: 'This is Burger',
        enabled: true,
        readOnly: true,
        child: Image.asset('images/sandwich.jpg'),
      ),
    );
  }
}
