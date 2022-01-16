import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExitApp_Programatically extends StatefulWidget {
  const ExitApp_Programatically({Key? key}) : super(key: key);

  @override
  _ExitApp_ProgramaticallyState createState() => _ExitApp_ProgramaticallyState();
}

class _ExitApp_ProgramaticallyState extends State<ExitApp_Programatically> {
  DateTime? lastTime;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        final now=DateTime.now();
        final maxDuration=Duration(seconds: 2);
        final warning=lastTime==null || now.difference(lastTime!)>maxDuration;

        if(warning){
          lastTime=now;
          Scaffold.of(context).showSnackBar(SnackBar(content: Text('Double to exit app!'),duration: maxDuration,));
          return false;
        }
        else{
          return true;
        }

      },
      child: Center(
        child: ElevatedButton(
          child: Text('Exit'),
          onPressed: (){
            if(Platform.isAndroid){
              SystemNavigator.pop();
            }
            else{
              exit(0);
            }
          },
        ),
      ),
    );
  }
}
