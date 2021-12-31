import 'package:flutter/material.dart';

class SwitchListTile_Demo extends StatefulWidget {
  const SwitchListTile_Demo({Key? key}) : super(key: key);

  @override
  _SwitchListTile_DemoState createState() => _SwitchListTile_DemoState();
}

List<bool> _toogle_value=[
  false,
  false,
  false,
  false,
  false,
];
List<String> _toogle_title=[
  'Wifi',
  'Mobile Data',
  'Hotspot',
  'VPN',
  'Server',
];
List<String> _toogle_SubTitle=[
  'This is Details',
  'This is Details',
  'This is Details',
  'This is Details',
  'This is Details',
];

List<Icon> _toogle_icon=[
  Icon(Icons.wifi),
  Icon(Icons.network_cell),
  Icon(Icons.network_locked_outlined),
  Icon(Icons.vpn_lock),
  Icon(Icons.security_rounded),
];

class _SwitchListTile_DemoState extends State<SwitchListTile_Demo> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _toogle_value.length,
        itemBuilder: (context,index){
        return SwitchListTile(
            value: _toogle_value[index],
            secondary: _toogle_icon[index],
            title: Text(_toogle_title[index]),
            subtitle: Text(_toogle_SubTitle[index],style: TextStyle(color: Colors.grey),),
            onChanged: (value){
              setState(() {
                _toogle_value[index]=value;
                print("${_toogle_title[index]} is clicked ${value}");
              });
            }
        );
        }
    );
  }
}
