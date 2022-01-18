import 'package:flutter/material.dart';

//to see device preview
//we will do this in main.dart file
/*
void main() {
  runZonedGuarded((){
    runApp(DevicePreview(builder: (context)=>MyApp()));
  }, (dynamic error, dynamic stack){
    print(error);
  });

}
 */
class Device_Preview_Demo extends StatefulWidget {
  const Device_Preview_Demo({Key? key}) : super(key: key);

  @override
  _Device_Preview_DemoState createState() => _Device_Preview_DemoState();
}

class _Device_Preview_DemoState extends State<Device_Preview_Demo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        color: Colors.orange,
      ),
    );
  }
}
