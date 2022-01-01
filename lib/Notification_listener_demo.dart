import 'package:flutter/material.dart';


class Notification_listener_demo extends StatefulWidget {
  const Notification_listener_demo({Key? key}) : super(key: key);

  @override
  _Notification_listener_demoState createState() => _Notification_listener_demoState();
}

class _Notification_listener_demoState extends State<Notification_listener_demo> {
 String message='';
 _onScrollStart(ScrollMetrics metrics){

   setState(() {
     print('Scroll start');
     message='Scroll Start';
   });
 }
 _onScrollUpdate(ScrollMetrics metrics){

   setState(() {
     print('Scroll update');
     message='Scroll Update';
   });
 }
 _onScrollEnd(ScrollMetrics metrics){

   setState(() {
     print('Scroll end');
     message='Scroll End';
   });
 }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          width: MediaQuery.of(context).size.width,
          color: Colors.green,
          child: Center(child: Text(message)),
        ),
        Expanded(
          child: NotificationListener<ScrollNotification>(
            onNotification: (notification){
              if(notification is ScrollStartNotification){
                _onScrollStart(notification.metrics);
              }
              if(notification is ScrollUpdateNotification){
                _onScrollUpdate(notification.metrics);
              }
              if(notification is ScrollEndNotification){
                _onScrollEnd(notification.metrics);
              }
              return true;
            },
              child: ListView.builder(
                itemCount: 100,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text('Index ${index}'),
                    );
                  }
              )
          ),
        ),
      ],
    );
  }
}
