import 'package:flutter/material.dart';

class InteractiveViewr_demo extends StatefulWidget {
  const InteractiveViewr_demo({Key? key}) : super(key: key);

  @override
  _InteractiveViewr_demoState createState() => _InteractiveViewr_demoState();
}

class _InteractiveViewr_demoState extends State<InteractiveViewr_demo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InteractiveViewer(
        constrained: true,
          scaleEnabled: true,
          boundaryMargin: EdgeInsets.all(50),
          child: Image.asset('images/large_img.jpg'),
      ),
    );
  }
}
