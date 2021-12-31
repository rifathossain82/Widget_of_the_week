import 'package:flutter/material.dart';

class Padding_Demo extends StatelessWidget {
  const Padding_Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.orange,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 10, 12),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.lightGreenAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10, 12, 14, 12),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.lightGreenAccent,
            ),
          )
        ],
      ),
    );
  }
}
