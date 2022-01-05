import 'package:flutter/material.dart';
import 'package:widget_of_the_week/Dismissible_demo/list_item.dart';

class Dismissible_widget extends StatefulWidget {
  List_item item;
  Widget child;
  DismissDirectionCallback dismissed;

  Dismissible_widget(this.item, this.child,this.dismissed);

  @override
  _Dismissible_widgetState createState() => _Dismissible_widgetState();
}

class _Dismissible_widgetState extends State<Dismissible_widget> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: ObjectKey(widget.item),
        background: backgroundSwipActionLeft(),
        secondaryBackground: backgroundSwipActionRight(),
        child: widget.child,
        onDismissed: widget.dismissed,
    );
  }
  Widget backgroundSwipActionLeft(){
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: Colors.green,
      child: Icon(Icons.archive_sharp,color: Colors.white,),
    );
  }

  Widget backgroundSwipActionRight(){
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: Colors.red,
      child: Icon(Icons.delete,color: Colors.white,),
    );
  }
}
