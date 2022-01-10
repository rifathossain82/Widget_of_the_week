import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:widget_of_the_week/Absorb_pointer_demo.dart';
import 'package:widget_of_the_week/Alert_dialog_demo.dart';
import 'package:widget_of_the_week/Align_demo.dart';
import 'package:widget_of_the_week/Animated_builder/Animated_builder_demo.dart';
import 'package:widget_of_the_week/Animated_builder/Slide_transition_demo.dart';
import 'package:widget_of_the_week/Animated_cross_fade/demo_1.dart';
import 'package:widget_of_the_week/Animated_cross_fade/demo_2.dart';
import 'package:widget_of_the_week/Animated_list_demo/Animated_list.dart';
import 'package:widget_of_the_week/Animated_opacity_demo.dart';
import 'package:widget_of_the_week/Animated_padding_demo.dart';
import 'package:widget_of_the_week/Animated_positioned_demo.dart';
import 'package:widget_of_the_week/Animated_switcher_demo.dart';
import 'package:widget_of_the_week/Aspect_ratio_demo.dart';
import 'package:widget_of_the_week/Back_drop_filter_demo.dart';
import 'package:widget_of_the_week/Builder_use_demo.dart';
import 'package:widget_of_the_week/CheckedBox_ListTile_Demo.dart';
import 'package:widget_of_the_week/Clip_Oval_Demo.dart';
import 'package:widget_of_the_week/Clip_R__rect_demo.dart';
import 'package:widget_of_the_week/Clip_path_demo.dart';
import 'package:widget_of_the_week/Color_filter.dart';
import 'package:widget_of_the_week/Constraints_box_demo.dart';
import 'package:widget_of_the_week/Cupertino_action_sheet.dart';
import 'package:widget_of_the_week/Data_table_demo.dart';
import 'package:widget_of_the_week/Dismissible_demo/Dismissible_list_demo.dart';
import 'package:widget_of_the_week/Draggable_scrollable_sheet.dart';
import 'package:widget_of_the_week/Fade_Transition_demo.dart';
import 'package:widget_of_the_week/Fade_in_image.dart';
import 'package:widget_of_the_week/Fitted_box_demo.dart';
import 'package:widget_of_the_week/Flexible_demo.dart';
import 'package:widget_of_the_week/Fractionally_sizedbox_demo.dart';
import 'package:widget_of_the_week/Future_builder_demo.dart';
import 'package:widget_of_the_week/Hero_widget/Hero_widget_demo.dart';
import 'package:widget_of_the_week/ImagePicker_Demo.dart';
import 'package:widget_of_the_week/Image_demo.dart';
import 'package:widget_of_the_week/Indexed_stack_demo.dart';
import 'package:widget_of_the_week/Indicator/Circular_progress_indigator_demo.dart';
import 'package:widget_of_the_week/Indicator/CupertinoActivity_Indicator.dart';
import 'package:widget_of_the_week/Device_info_plus_demo.dart';
import 'package:widget_of_the_week/Divider_demo.dart';
import 'package:widget_of_the_week/ExpansionPanel_Demo.dart';
import 'package:widget_of_the_week/Image_filtered_demo.dart';
import 'package:widget_of_the_week/Indicator/Linear_progress_iindicator_demo.dart';
import 'package:widget_of_the_week/Ingnore_pointer.dart';
import 'package:widget_of_the_week/InteractiveViewr_demo.dart';
import 'package:widget_of_the_week/Layout_builder_demo.dart';
import 'package:widget_of_the_week/Limited_box_demo.dart';
import 'package:widget_of_the_week/ListView_demo.dart';
import 'package:widget_of_the_week/List_While_ScrollView_demo.dart';
import 'package:widget_of_the_week/Location_demo.dart';
import 'package:widget_of_the_week/Media_query_demo.dart';
import 'package:widget_of_the_week/Notification_listener_demo.dart';
import 'package:widget_of_the_week/Opacity_demo.dart';
import 'package:widget_of_the_week/Orientation_builder_demo.dart';
import 'package:widget_of_the_week/PageView/HomePage.dart';
import 'package:widget_of_the_week/Physical_model_Demo.dart';
import 'package:widget_of_the_week/FadeInImageWithPlace_holder_demo.dart';
import 'package:widget_of_the_week/Positioned_demo.dart';
import 'package:widget_of_the_week/Reorderable_listview/Reordreable_listview_demo.dart';
import 'package:widget_of_the_week/Rich_text_demo.dart';
import 'package:widget_of_the_week/Rotate_Box_Demo.dart';
import 'package:widget_of_the_week/Scrollbar_Demo.dart';
import 'package:widget_of_the_week/Selectable_text_demo.dart';
import 'package:widget_of_the_week/Semantics_demo.dart';
import 'package:widget_of_the_week/Show_about_dialog_demo.dart';
import 'package:widget_of_the_week/Sized_box_demo.dart';
import 'package:widget_of_the_week/Slidable_Demo.dart';
import 'package:widget_of_the_week/Slider_demo.dart';
import 'package:widget_of_the_week/Sliver_list_sliver_grid_demo.dart';
import 'package:widget_of_the_week/SnackBar_Demo.dart';
import 'package:widget_of_the_week/Spacer_demo.dart';
import 'package:widget_of_the_week/Stack_demo.dart';
import 'package:widget_of_the_week/Stream_builder_demo.dart';
import 'package:widget_of_the_week/SwitchListTile_Demo.dart';
import 'package:widget_of_the_week/Table_demo.dart';
import 'package:widget_of_the_week/Toggle_buttons_demo.dart';
import 'package:widget_of_the_week/Tool_tip_demo.dart';
import 'package:widget_of_the_week/Transform_demo.dart';
import 'package:widget_of_the_week/Value_listenable_builder_demo.dart';
import 'package:widget_of_the_week/animated_text_kit_demo.dart';
import 'package:widget_of_the_week/padding_demo.dart';
import 'package:widget_of_the_week/sensor/Sensor2.dart';
import 'package:widget_of_the_week/sensor/Sensor_plus.dart';

import 'Animated_icon_demo.dart';
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
          //backgroundColor: Colors.blueGrey[900],
          appBar: appbar,
          body: ImagePickerDemo(),
        )
    );
  }
}
