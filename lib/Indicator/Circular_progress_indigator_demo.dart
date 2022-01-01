import 'package:flutter/material.dart';

class Circular_progress_indicator extends StatefulWidget {
  const Circular_progress_indicator({Key? key}) : super(key: key);

  @override
  State<Circular_progress_indicator> createState() => _Circular_progress_indicatorState();
}

class _Circular_progress_indicatorState extends State<Circular_progress_indicator> with SingleTickerProviderStateMixin {

  late AnimationController animationController;
  var _colorTween;
  @override
  void initState() {
    animationController=AnimationController(vsync: this,duration: Duration(milliseconds: 4000));
    _colorTween=animationController.drive(
      ColorTween(
        begin: Colors.blue,
        end: Colors.orange
      )
    );
    animationController.repeat();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        //color: Colors.blue,
        //backgroundColor: Colors.blue.withOpacity(0.3),
        strokeWidth: 10,
        //AlwaysStoppedAnimation<Color>(Colors.green) for value color
        valueColor: _colorTween,

      ),
    );
  }
}
