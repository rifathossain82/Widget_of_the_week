import 'package:flutter/material.dart';


class Linear_progress_indicator_demo extends StatefulWidget {
  const Linear_progress_indicator_demo({Key? key}) : super(key: key);

  @override
  _Linear_progress_indicator_demoState createState() => _Linear_progress_indicator_demoState();
}

class _Linear_progress_indicator_demoState extends State<Linear_progress_indicator_demo> with SingleTickerProviderStateMixin {
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
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: LinearProgressIndicator(
          //color: Colors.red,
          backgroundColor: Colors.grey,
          minHeight: 10,
          //value: 10, //it's depend on me
          valueColor: _colorTween,
        ),
      ),
    );
  }
}
