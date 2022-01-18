import 'dart:async';

import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Check_Connection extends StatefulWidget {
  const Check_Connection({Key? key}) : super(key: key);

  @override
  _Check_ConnectionState createState() => _Check_ConnectionState();
}

class _Check_ConnectionState extends State<Check_Connection> {

  StreamSubscription? streamSubscription;

  Future checkConnection()async{
    var connectivityResult=await (Connectivity().checkConnectivity());
    if(connectivityResult==ConnectivityResult.mobile){
      Fluttertoast.showToast(msg: 'Mobile network is Connected.');
    }
    else if(connectivityResult==ConnectivityResult.wifi){
      Fluttertoast.showToast(msg: 'Wifi network is Connected.');
    }
    else if(connectivityResult==ConnectivityResult.ethernet){
      Fluttertoast.showToast(msg: 'Ethernet network is Connected.');
    }
    else if(connectivityResult==ConnectivityResult.bluetooth){
      Fluttertoast.showToast(msg: 'Bluetooth is Connected.');
    }
    else{
      Fluttertoast.showToast(msg: 'No Internet');
    }
  }

  @override
  void initState() {
    streamSubscription=Connectivity().onConnectivityChanged.listen((event) {checkConnection();});
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Check Connection Demo'),
    );
  }
}
