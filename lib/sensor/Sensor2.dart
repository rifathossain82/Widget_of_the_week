import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

class Sensor2 extends StatefulWidget {
  const Sensor2({Key? key}) : super(key: key);

  @override
  _Sensor2State createState() => _Sensor2State();
}

class _Sensor2State extends State<Sensor2> {
  @override
  Widget build(BuildContext context) {
    return Container(
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    accelerometerEvents.listen((event) {
          (AccelerometerEvent event){
        setState(() {
          var x=event.x;
          var y=event.y;
          var z=event.z;
          print("${x}, ${y}, ${z}");
        });

      };
    });
  }
}

