import 'package:flutter/material.dart';

class DropDown_Example2 extends StatefulWidget {
  const DropDown_Example2({Key? key}) : super(key: key);

  @override
  _DropDown_Example2State createState() => _DropDown_Example2State();
}

class _DropDown_Example2State extends State<DropDown_Example2> {
  List<String> items = ['1st', '2nd', '3rd', '4th', '5th', '6th', '7th', '8th'];
  var _value;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.orange,width: 3,)
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: _value,
            isExpanded: true,
            hint: Text('Select Semester'),
            items: items.map(buildItem).toList(),
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildItem(String item) {
    return DropdownMenuItem(
        child: Text(item),
      value: item,

    );
  }
}
