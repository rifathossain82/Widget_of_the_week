import 'package:flutter/material.dart';

class Animated_icon extends StatefulWidget {
  const Animated_icon({Key? key}) : super(key: key);

  @override
  _Animated_iconState createState() => _Animated_iconState();
}

class _Animated_iconState extends State<Animated_icon> with SingleTickerProviderStateMixin{
 late AnimationController controller;
 bool is_show=false;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=AnimationController(
        vsync: this,
      duration: Duration(milliseconds: 1000),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
        onTap: (){
          setState(() {
            is_show=!is_show;
            is_show?controller.forward():controller.reverse();
          });
        },
        child: AnimatedIcon(
          size: 100,
            color: Colors.orange,
            icon: AnimatedIcons.list_view,
            progress: controller
        ),
      ),
    );
  }
}
