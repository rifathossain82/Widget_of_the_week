import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Physical_model_demo extends StatelessWidget {
  const Physical_model_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PhysicalModel(
        color: Colors.orange,
        elevation: 18,
        shadowColor: Colors.orange,
        shape: BoxShape.circle,
        borderRadius: BorderRadius.circular(16),
        clipBehavior: Clip.hardEdge,
        child: Container(
          height: 200,
          width: 200,
          child: Center(child: Text('Hello Rifat',style: TextStyle(fontSize: 22),)),
          color: Colors.blue.withOpacity(0.0),
        ),
      ),
    );
  }
}
