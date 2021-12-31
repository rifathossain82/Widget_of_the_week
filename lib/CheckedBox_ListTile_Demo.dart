import 'package:flutter/material.dart';

class CheckedBox_ListTile_Demo extends StatefulWidget {
  const CheckedBox_ListTile_Demo({Key? key}) : super(key: key);

  @override
  _CheckedBox_ListTile_DemoState createState() => _CheckedBox_ListTile_DemoState();
}

class _CheckedBox_ListTile_DemoState extends State<CheckedBox_ListTile_Demo> {
  List<bool> _checked_value=[
    false,
    false,
    false,
    false,
    false,
  ];
  List<String> _checked_title=[
    'Wifi',
    'Mobile Data',
    'Hotspot',
    'VPN',
    'Server',
  ];
  List<String> _checked_SubTitle=[
    'This is Details',
    'This is Details',
    'This is Details',
    'This is Details',
    'This is Details',
  ];

  List<Icon> _checked_icon=[
    Icon(Icons.wifi),
    Icon(Icons.network_cell),
    Icon(Icons.network_locked_outlined),
    Icon(Icons.vpn_lock),
    Icon(Icons.security_rounded),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _checked_icon.length,
        itemBuilder: (context,index){
          return CheckboxListTile(
              value: _checked_value[index],
              secondary: _checked_icon[index],
              title: Text(_checked_title[index]),
              controlAffinity: ListTileControlAffinity.leading,
              subtitle: Text(_checked_SubTitle[index],style: TextStyle(color: Colors.grey),),
              onChanged: (value){
                setState(() {
                  _checked_value[index]=value!;
                  print("${_checked_title[index]} is clicked ${value}");
                });
              }
          );
        }
    );
  }
}
