import 'package:flutter/material.dart';


class Spacer_demo extends StatelessWidget {
  const Spacer_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.orange,
          ),
          Spacer(flex: 2,),
          Container(
            height: 100,
            width: 100,
            color: Colors.orange,
          ),
          Spacer(flex: 1,),
          Container(
            height: 100,
            width: 100,
            color: Colors.orange,
          )
        ],
      ),
    );
  }
}
