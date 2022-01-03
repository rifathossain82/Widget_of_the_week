import 'package:flutter/material.dart';

class Data_table_demo extends StatefulWidget {
  const Data_table_demo({Key? key}) : super(key: key);

  @override
  _Data_table_demoState createState() => _Data_table_demoState();
}

class _Data_table_demoState extends State<Data_table_demo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Center(
        child: SingleChildScrollView(
          child: DataTable(
            sortColumnIndex: 0,
              sortAscending: true,
              columns: [
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Year'),numeric: true),
              ],
              rows: [
                DataRow(
                  selected: true,
                    cells: [
                      DataCell(Text('Rifat')),
                      DataCell(Text('2001')),
                    ]
                ),
                DataRow(
                    cells: [
                      DataCell(Text('Kawchar')),
                      DataCell(Text('1999')),
                    ]
                ),
                DataRow(
                  color: MaterialStateProperty.all(Colors.orange),

                    cells: [
                      DataCell(Text('Emon'),showEditIcon: true,placeholder: true),
                      DataCell(Text('2000')),
                    ]
                ),
                DataRow(
                    cells: [
                      DataCell(Text('Shuvon')),
                      DataCell(Text('1998')),
                    ]
                )
              ]
          ),
        ),
      ),
    );
  }
}
