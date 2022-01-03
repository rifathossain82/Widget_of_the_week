import 'package:flutter/material.dart';

class Demo_2 extends StatefulWidget {
  const Demo_2({Key? key}) : super(key: key);

  @override
  _Demo_2State createState() => _Demo_2State();
}

class _Demo_2State extends State<Demo_2> {
  bool isFollow=false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedCrossFade(
            duration: Duration(milliseconds: 4000),
            reverseDuration: Duration(milliseconds: 3500),
            crossFadeState: isFollow==false?CrossFadeState.showFirst:CrossFadeState.showSecond,
            firstChild: Container(
              height: 220,
              width: 220,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/image1.png',),
              ),
            ),
            secondChild: Container(
              child: Image.asset('images/sandwich.jpg'),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    isFollow=!isFollow;
                  });
                },
                child: Text('Change')
            ),
          )
        ],
      ),
    );
  }
}
