import 'package:flutter/material.dart';

class Rotate_Box_Demo extends StatefulWidget {
  const Rotate_Box_Demo({Key? key}) : super(key: key);

  @override
  _Rotate_Box_DemoState createState() => _Rotate_Box_DemoState();
}

class _Rotate_Box_DemoState extends State<Rotate_Box_Demo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        RotatedBox(
        quarterTurns: 3,
        child: Text('Rifat Hossain',style: TextStyle(color: Colors.white),),
      ),
          Expanded(child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text('In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available'
                'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available',
              style: TextStyle(color: Colors.white,letterSpacing: 1,wordSpacing: 2,),),
          ))
        ],
      ),
    );
  }
}
