import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SpeedDial_menu extends StatefulWidget {
  const SpeedDial_menu({Key? key}) : super(key: key);

  @override
  _SpeedDial_menuState createState() => _SpeedDial_menuState();
}

class _SpeedDial_menuState extends State<SpeedDial_menu> {
  final isOpenClose=ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        if(isOpenClose.value){
          isOpenClose.value=false;

          return false;
        }
        else{
          return true;
        }

      },
      child: Scaffold(
        body: Center(
          child: Text('Speed Dial Demo'),
        ),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          tooltip: 'Menu',
          backgroundColor: Colors.black,
          //curve: Curves.easeInOut,
          onClose: (){
            Fluttertoast.showToast(msg: 'Close Menu');
          },
          onOpen: (){
            Fluttertoast.showToast(msg: 'Open Menu');
          },
          spaceBetweenChildren: 12,
          childPadding: EdgeInsets.all(5),
          openCloseDial: isOpenClose,
          children: [
            SpeedDialChild(
              label: 'Share',
              child: Icon(Icons.share),
              onTap: (){},
            ),
            SpeedDialChild(
                label: 'Feedback',
                child: Icon(Icons.feedback),
                onTap: (){}
            ),
            SpeedDialChild(
                label: 'Report',
                child: Icon(Icons.report),
                onTap: (){}
            ),
          ],
        ),
      ),
    );
  }
}
