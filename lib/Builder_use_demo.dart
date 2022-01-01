import 'package:flutter/material.dart';

class Builder_use_demo extends StatefulWidget {
  const Builder_use_demo({Key? key}) : super(key: key);

  @override
  _Builder_use_demoState createState() => _Builder_use_demoState();
}

class _Builder_use_demoState extends State<Builder_use_demo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Builder(
        builder: (context) {
          return RaisedButton(
            onPressed: (){
              Scaffold.of(context).showSnackBar(SnackBar(content: Text('You are so cute.'),backgroundColor: Colors.red,));
            },
            child: Text('Show Message'),
          );
        }
      ),
    );
  }
}
