import 'package:flutter/material.dart';

class Animated_switcher_demo extends StatefulWidget {
  const Animated_switcher_demo({Key? key}) : super(key: key);

  @override
  _Animated_switcher_demoState createState() => _Animated_switcher_demoState();
}

class _Animated_switcher_demoState extends State<Animated_switcher_demo> {
  bool is_show=false;
  String txt='Show Message';
  Widget my_widget=Container(
    height: 120,
    width: 180,
    color: Colors.blueGrey,
  );


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSwitcher(
            //switchInCurve: Curves.easeInOut,
              //switchOutCurve: Curves.easeIn,
              transitionBuilder: (Widget child, Animation<double> animation){
              return ScaleTransition(scale: animation,child: child,);
              },
              duration: Duration(seconds: 12),
            child: my_widget,
          ),
          SizedBox(height: 20,),
          ElevatedButton(
              onPressed: (){
                setState(() {
                  is_show=!is_show;
                  my_widget=is_show?Container(
                    height: 180,
                    width: 120,
                    color: Colors.orange,
                  ):Container(
                    height: 120,
                    width: 180,
                    color: Colors.blueGrey,
                  );
                  txt=is_show?'Hide Message':'Show Message';
                });
              },
              child: Text('Switch')
          )
        ],
      ),
    );
  }
}
