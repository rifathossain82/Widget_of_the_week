import 'package:flutter/material.dart';

class Layout_builder_demo extends StatelessWidget {
  const Layout_builder_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth<600){
        return Mobile_screen();
      }
      else{
        return Web_screen();
      }
    });
  }

  Widget Mobile_screen(){
    return Center(
      child: Container(
        child: Text('This screen for Mobile'),
      ),
    );
  }

  Widget Web_screen(){
    return Center(
      child: Container(
      child: Text('This screen for Web'),
    ),);
  }
}
