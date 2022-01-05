import 'package:flutter/material.dart';

class Tool_tip_demo extends StatelessWidget {
  const Tool_tip_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Tooltip(
            textStyle: TextStyle(color: Colors.white),
              margin: EdgeInsets.only(top: 20),
              height: 50,
              child: Icon(
            Icons.menu,
            size: 50,
          ),
            message: 'Menu',
          ),
          SizedBox(
            width: 20,
          ),
          Tooltip(
            child: Icon(
              Icons.settings,
              size: 50,
            ),
            message: 'Settings',
          ),
          SizedBox(
            width: 20,
          ),
          Tooltip(
            child: Icon(
              Icons.clean_hands,
              size: 50,
            ),
            message: 'Clean Hands',
          ),
          SizedBox(
            width: 20,
          ),
          Tooltip(
            child: Icon(
              Icons.archive,
              size: 50,
            ),
            message: 'Archive',
          ),
        ],
      ),
    );
  }
}
