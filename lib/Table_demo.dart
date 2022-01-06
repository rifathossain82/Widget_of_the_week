import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Table_demo extends StatefulWidget {
  const Table_demo({Key? key}) : super(key: key);

  @override
  _Table_demoState createState() => _Table_demoState();
}

class _Table_demoState extends State<Table_demo> {
  @override
  Widget build(BuildContext context) {
    TextStyle header=TextStyle(fontWeight: FontWeight.bold,);
    TextStyle child=TextStyle(fontWeight: FontWeight.normal,);
    return Table(
      border: TableBorder.all(),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: {1:FractionColumnWidth(0.5)},

      children: [
        TableRow(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text('Name',style: header,)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text('Age',style: header,)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text('Department',style: header,)),
            ),
          ]
        ),
        TableRow(
            children: [
              Center(child: Text('Rifat Hossain',style: child,)),
              Center(child: Text('21',style: child,)),
              Center(child: Text('Computer',style: child,)),
            ]
        ),
        TableRow(
            children: [
              Center(child: Text('Rifat Hossain',style: child,)),
              Center(child: Text('21',style: child,)),
              Center(child: Text('Computer',style: child,)),
            ]
        ),
        TableRow(
            children: [
              Center(child: Text('Rifat Hossain',style: child,)),
              Center(child: Text('21',style: child,)),
              Center(child: Text('Computer',style: child,)),
            ]
        ),
        TableRow(
            children: [
              Center(child: Text('Rifat Hossain',style: child,)),
              Center(child: Text('21',style: child,)),
              Center(child: Text('Computer',style: child,)),
            ]
        ),
      ],
    );
  }
}
