import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertino_action_sheet extends StatefulWidget {
  const Cupertino_action_sheet({Key? key}) : super(key: key);

  @override
  _Cupertino_action_sheetState createState() => _Cupertino_action_sheetState();
}
var message;
class _Cupertino_action_sheetState extends State<Cupertino_action_sheet> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('show action'),
        onPressed: () async{
          message=await showCupertinoModalPopup(
              context: context,
              builder: (context){
                return sheet(context: context);
              });
          print(message);
        },
      ),
    );
  }

  Widget sheet({required BuildContext context}) {
    return CupertinoActionSheet(
      title: Text('Select One'),
      message: Text('What do you want?'),
      cancelButton:
          CupertinoActionSheetAction(
              onPressed: () {
                Navigator.of(context).pop('Cencel');},
              child: Text('Cancel')
          ),
      actions: [
        CupertinoActionSheetAction(
          onPressed: () {
            Navigator.of(context).pop('Add');
          },
          child: Text(
            'Add',
            style: TextStyle(fontSize: 26, color: Colors.blue),
          ),
          isDefaultAction: true,
        ),
        CupertinoActionSheetAction(
          onPressed: () {
            Navigator.of(context).pop('Update');},
          child:
              Text('Update', style: TextStyle(fontSize: 26, color: Colors.red)),
          isDestructiveAction: false,
        ),
        CupertinoActionSheetAction(
            onPressed: () {
              Navigator.of(context).pop('Delete');},
            child: Text('Delete',
                style:
                    TextStyle(fontSize: 26, color: Colors.lightGreenAccent))),
      ],
    );
  }
}
