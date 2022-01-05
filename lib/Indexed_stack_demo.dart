import 'package:flutter/material.dart';

class Indexed_stack_Demo extends StatefulWidget {
  const Indexed_stack_Demo({Key? key}) : super(key: key);

  @override
  _Indexed_stack_DemoState createState() => _Indexed_stack_DemoState();
}

class _Indexed_stack_DemoState extends State<Indexed_stack_Demo> {
  int index_=0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IndexedStack(
            index: index_,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.lightGreenAccent,
                child: Center(child: Text('Hello World'),),
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
                child: Center(child: Text('Rifat Hossain'),),
              )
            ],
          ),
          SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: (){
                  setState(() {
                    index_=0;
                  });
                },
              child: Text('widget 1'),
              ),
              RaisedButton(
                onPressed: (){
                  setState(() {
                    index_=1;
                  });
                },
                child: Text('widget 2'),
              ),

            ],
          )
        ],
      ),
    );
  }
}
