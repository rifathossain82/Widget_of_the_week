import 'package:flutter/material.dart';

class Positioned_demo extends StatelessWidget {
  const Positioned_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 220,
            width: 220,
            color: Colors.blue,
            child: Stack(
              children: [
                Positioned(
                  height: 120,
                    width: 120,
                    right: 10,
                    bottom: 55,
                    child: FlutterLogo()
                ),

              ],
            ),
          ),
          Spacer(),
          Container(
            height: 220,
            width: 220,
            color: Colors.blue,
            child: Stack(
              children: [
                Positioned.fill(
                    child: FlutterLogo()
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
