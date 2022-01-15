import 'package:flutter/material.dart';

class DropDownExample1 extends StatefulWidget {
  const DropDownExample1({Key? key}) : super(key: key);

  @override
  _DropDownExample1State createState() => _DropDownExample1State();
}

class _DropDownExample1State extends State<DropDownExample1> {
   var _value;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton(
        value: _value,
          hint: Text('Select One'),
          elevation: 2,
          icon: Icon(Icons.navigate_next),
          borderRadius: BorderRadius.circular(8),
          focusColor: Colors.green,
          items: [
            DropdownMenuItem(child: Text('Computer Technology'),value: 'Computer Technology',),
            DropdownMenuItem(child: Text('Civil Technology'),value: 'Civil Technology',),
            DropdownMenuItem(child: Text('Electrical Technology'),value: 'Electrical Technology',),
            DropdownMenuItem(child: Text('Machanical Technology'),value: 'Machanical Technology',),
          ],
          onChanged: (value){
            setState(() {
              _value=value;
            });
          }
      ),
    );
  }
}
