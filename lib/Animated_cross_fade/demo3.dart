import 'package:flutter/material.dart';

class Animated_crossFade3 extends StatefulWidget {
  const Animated_crossFade3({Key? key}) : super(key: key);

  @override
  _Animated_crossFade3State createState() => _Animated_crossFade3State();
}

class _Animated_crossFade3State extends State<Animated_crossFade3> {

  bool state=true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedCrossFade(
          firstChild: Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.orange
            ),
            child: Center(child: ElevatedButton(child: Text('Open Box'),onPressed: (){
              setState(() {
                state=false;
              });
            })),
          ),
          secondChild: Text('Just Do It.'),
          crossFadeState: state?CrossFadeState.showFirst:CrossFadeState.showSecond,
          duration: Duration(seconds: 3)
      ),
    );
  }
}
