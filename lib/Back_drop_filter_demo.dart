import 'dart:ui';

import 'package:flutter/material.dart';

class Back_drop_filter_demo extends StatefulWidget {
  const Back_drop_filter_demo({Key? key}) : super(key: key);

  @override
  _Back_drop_filter_demoState createState() => _Back_drop_filter_demoState();
}

class _Back_drop_filter_demoState extends State<Back_drop_filter_demo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset('images/sandwich.jpg'),
              Positioned(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5,
                    sigmaY: 5,
                  ),
                  child: Container(
                    color: Colors.black.withOpacity(0),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
