import 'package:flutter/material.dart';

class Toggle_buttons_demo extends StatefulWidget {
  const Toggle_buttons_demo({Key? key}) : super(key: key);

  @override
  _Toggle_buttons_demoState createState() => _Toggle_buttons_demoState();
}

class _Toggle_buttons_demoState extends State<Toggle_buttons_demo> {
 List<bool> _selections=List.generate(
     3,
         (index) => false
 );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleButtons(
        selectedBorderColor: Colors.orange,
        borderColor: Colors.white,
        fillColor: Colors.white,
        color: Colors.white,
        selectedColor: Colors.orange, //for icon
        highlightColor: Colors.lightGreenAccent,
        splashColor: Colors.orange,
        focusColor: Colors.white,
        borderRadius: BorderRadius.circular(16),
        renderBorder: false,
        isSelected: _selections,
        children:[
          Icon(Icons.cake),
          Icon(Icons.fastfood),
          Icon(Icons.local_cafe),
        ],
        onPressed: (index){
          setState(() {
            _selections[index]=!_selections[index];
          });
        },
      ),
    );
  }
}
