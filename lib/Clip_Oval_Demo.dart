import 'package:flutter/material.dart';

class Clip_oval_demo extends StatelessWidget {
  const Clip_oval_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ClipOval(
            child: Image.asset('images/large_img.jpg'),
          ),
          SizedBox(height: 10,),
          ClipOval(child: Container(height: 200,width: 200,color: Colors.blue,)),
        ],
      ),
    );
  }
}
