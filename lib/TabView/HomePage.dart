import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "This is Home Page",
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
      ),
    );
  }
}
