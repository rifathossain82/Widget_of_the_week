import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Alert_dialog_demo extends StatelessWidget {
  const Alert_dialog_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(
            color: Colors.blueGrey,
              onPressed: (){
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    barrierColor: Colors.blue.withOpacity(0.5),
                    builder: (context)=>AlertDialog(
                      elevation: 20,
                      backgroundColor: Colors.blue,
                      alignment: Alignment.bottomCenter,
                      titleTextStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),
                      title: Text('Accept?'),
                      content: Text('Do you accept?'),
                      actions: [
                        FlatButton(
                            onPressed: (){
                              Navigator.pop(context);},
                            child: Text('No')
                        ),
                        FlatButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            child: Text('Yes')
                        )
                      ],
                    ),

                );
              },
              child: Text('Simple Alert')
          ),
          SizedBox(height: 16,),
          FlatButton(
              color: Colors.blueGrey,
              onPressed: (){
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  barrierColor: Colors.orange.withOpacity(0.5),
                  builder: (context)=>CupertinoAlertDialog(
                    title: Text('Confirm'),
                    content: Text('Are you want to exit?'),
                    actions: [
                      CupertinoDialogAction(child: Text('Yes'),onPressed: (){
                        Navigator.pop(context);
                      },),
                      CupertinoDialogAction(child: Text('No'),onPressed: (){
                        Navigator.pop(context);
                      },),
                    ],
                  ),

                );
              },
              child: Text('Cupertino Alert')
          ),
        ],
      ),
    );
  }
}
