import 'package:flutter/material.dart';

class Show_about_dialog_demo extends StatefulWidget {
  const Show_about_dialog_demo({Key? key}) : super(key: key);

  @override
  _Show_about_dialog_demoState createState() => _Show_about_dialog_demoState();
}

class _Show_about_dialog_demoState extends State<Show_about_dialog_demo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: (){
          showAboutDialog(
              context: context,
            applicationIcon: FlutterLogo(),
            applicationVersion: "1.0.1",
            applicationLegalese: 'hossainrifat82',
            children: [
              Text('App to test flutter widget.'),
              Text('Demo Apps'),
            ]
          );
        },
        child: Text('Show Dailog'),
      ),
    );
  }
}
