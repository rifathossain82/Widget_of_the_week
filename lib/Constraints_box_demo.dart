import 'package:flutter/material.dart';

class Constraints_box_demo extends StatefulWidget {
  const Constraints_box_demo({Key? key}) : super(key: key);

  @override
  _Constraints_box_demoState createState() => _Constraints_box_demoState();
}

class _Constraints_box_demoState extends State<Constraints_box_demo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 120,
              minWidth: 100
            ),
              child: Text('Hello Rifat! Are you want to be a good programmer?'),
          ),
          SizedBox(height: 20,),
          ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: 180,
                minWidth: 130,
              minHeight: 80,
              maxHeight: 120,
            ),
            child: RaisedButton(
              onPressed: (){},
              child: Text('Yes'),
              color: Colors.orange,
            ),
          )
        ],
      ),
    );
  }
}
