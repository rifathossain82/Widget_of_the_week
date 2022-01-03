import 'package:flutter/material.dart';

class Animated_cross_fade_demo extends StatefulWidget {
  const Animated_cross_fade_demo({Key? key}) : super(key: key);

  @override
  _Animated_cross_fade_demoState createState() => _Animated_cross_fade_demoState();
}


class _Animated_cross_fade_demoState extends State<Animated_cross_fade_demo> {

  bool isFollow=false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 220,
            width: 220,
            child: CircleAvatar(
              backgroundImage: AssetImage('images/image1.png',),
            ),
          ),
          SizedBox(height: 20,),
          AnimatedCrossFade(
            duration: Duration(milliseconds: 600),
            reverseDuration: Duration(milliseconds: 500),
            crossFadeState: isFollow==false?CrossFadeState.showFirst:CrossFadeState.showSecond,
            firstChild: Container(
              width: MediaQuery.of(context).size.width-60,
              child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      isFollow=true;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Follow',style: TextStyle(fontSize: 24,),),
                  )
              ),
            ),
            secondChild: Container(
              width: MediaQuery.of(context).size.width-60,
              child: OutlinedButton(
                  onPressed: (){
                    setState(() {
                      isFollow=false;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Unfollow',style: TextStyle(fontSize: 24,),),
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}
