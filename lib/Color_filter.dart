import 'package:flutter/material.dart';

class Color_filter extends StatelessWidget {
  const Color_filter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ColorFiltered(
          //   colorFilter: ColorFilter.mode(
          //       Colors.grey,
          //       BlendMode.colorBurn
          //   ),
          //   child: Container(
          //     height: 250,
          //     width: 300,
          //     color: Colors.white,
          //     child: Center(
          //       child: Text('Cool App'),
          //     ),
          //   ),
          // )
          Container(
            height: 250,
            width: 300,
            color: Colors.white,
            child: Center(
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(Colors.orange, BlendMode.colorBurn),
                  child: Image.asset('images/sandwich.jpg'))
            ),
          ),
        ],
      ),
    );
  }
}
