import 'package:flutter/material.dart';

class SliverGridView_Demo extends StatefulWidget {
  const SliverGridView_Demo({Key? key}) : super(key: key);

  @override
  _SliverGridView_DemoState createState() => _SliverGridView_DemoState();
}

class _SliverGridView_DemoState extends State<SliverGridView_Demo> {
  @override
  Widget build(BuildContext context) {
    int a=1;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
                  (context,index){
                return Container(
                  color: Colors.blueGrey[900],
                  child: Center(child: Text('${index}',style: TextStyle(color: Colors.white,fontSize: 26),),),
                );
              },
              childCount: 30,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: (100/200),   //to change grid item height and width   1st one is width and 2nd is height
            ),
          ),
        ],
      ),
    );
  }
}
