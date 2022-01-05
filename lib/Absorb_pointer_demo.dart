import 'package:flutter/material.dart';

class Absorb_pointer_Demo extends StatefulWidget {
  const Absorb_pointer_Demo({Key? key}) : super(key: key);

  @override
  _Absorb_pointer_DemoState createState() => _Absorb_pointer_DemoState();
}

class _Absorb_pointer_DemoState extends State<Absorb_pointer_Demo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AbsorbPointer(
            child: RaisedButton(
              child: Text('Show Data'),
                onPressed: (){},
            ),
          ),
          SizedBox(height: 16,),
          RaisedButton(
            child: Text('Show Contact'),
            onPressed:null,
          ),
          SizedBox(height: 16,),
          AbsorbPointer(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter value'
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
