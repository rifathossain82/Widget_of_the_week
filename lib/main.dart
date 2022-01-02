import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:widget_of_the_week/Builder_use_demo.dart';
import 'package:widget_of_the_week/CheckedBox_ListTile_Demo.dart';
import 'package:widget_of_the_week/Clip_Oval_Demo.dart';
import 'package:widget_of_the_week/Clip_path_demo.dart';
import 'package:widget_of_the_week/Color_filter.dart';
import 'package:widget_of_the_week/Cupertino_action_sheet.dart';
import 'package:widget_of_the_week/Draggable_scrollable_sheet.dart';
import 'package:widget_of_the_week/Image_demo.dart';
import 'package:widget_of_the_week/Indicator/Circular_progress_indigator_demo.dart';
import 'package:widget_of_the_week/Indicator/CupertinoActivity_Indicator.dart';
import 'package:widget_of_the_week/Device_info_plus_demo.dart';
import 'package:widget_of_the_week/Divider_demo.dart';
import 'package:widget_of_the_week/ExpansionPanel_Demo.dart';
import 'package:widget_of_the_week/Image_filtered_demo.dart';
import 'package:widget_of_the_week/Indicator/Linear_progress_iindicator_demo.dart';
import 'package:widget_of_the_week/Ingnore_pointer.dart';
import 'package:widget_of_the_week/InteractiveViewr_demo.dart';
import 'package:widget_of_the_week/ListView_demo.dart';
import 'package:widget_of_the_week/List_While_ScrollView_demo.dart';
import 'package:widget_of_the_week/Location_demo.dart';
import 'package:widget_of_the_week/Notification_listener_demo.dart';
import 'package:widget_of_the_week/PageView/HomePage.dart';
import 'package:widget_of_the_week/Physical_model_Demo.dart';
import 'package:widget_of_the_week/Rotate_Box_Demo.dart';
import 'package:widget_of_the_week/Scrollbar_Demo.dart';
import 'package:widget_of_the_week/Show_about_dialog_demo.dart';
import 'package:widget_of_the_week/Slidable_Demo.dart';
import 'package:widget_of_the_week/SnackBar_Demo.dart';
import 'package:widget_of_the_week/SwitchListTile_Demo.dart';
import 'package:widget_of_the_week/Toggle_buttons_demo.dart';
import 'package:widget_of_the_week/animated_text_kit_demo.dart';
import 'package:widget_of_the_week/padding_demo.dart';
import 'package:widget_of_the_week/sensor/Sensor2.dart';
import 'package:widget_of_the_week/sensor/Sensor_plus.dart';

import 'Shader_Mask_Demo.dart';
import 'TabPageSelector_Demo.dart';


void main() {
  runZonedGuarded((){
    runApp(MyApp());
  }, (dynamic error, dynamic stack){
    print(error);
  });

}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

final appbar = AppBar(
  title: TyperAnimatedTextKit(
    text: ['Widget Of The Week'],
    textStyle: TextStyle(fontSize: 22),
  ),
  elevation: 0,
  //backgroundColor: Colors.transparent,
  centerTitle: true,
);

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Widget Of The Week',
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.blueGrey[900],
          appBar: appbar,
          body: Draggable_scrollable_sheet(),
        )
    );
  }
}
