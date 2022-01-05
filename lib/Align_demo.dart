import 'package:flutter/material.dart';


class Align_demo extends StatelessWidget {
  const Align_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 220,
            width: 220,
            color: Colors.lightBlueAccent,
            child: Align(
              alignment: Alignment.bottomRight,
                child: Text('Rifat Hossain ',style: TextStyle(fontSize: 22)
                  ,)
            ),
          ),
          Spacer(),
          Container(
            height: 220,
            width: 220,
            color: Colors.lightBlueAccent,
            child: Align(
                alignment: Alignment(1.0,-1.0),  /// bottom/top,  left/right
                child: Text('Rifat Hossain ',style: TextStyle(fontSize: 22)
                  ,)
            ),
          ),
        ],
      ),
    );
  }
}
