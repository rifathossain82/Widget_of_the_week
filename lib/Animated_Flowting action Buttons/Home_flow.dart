import 'package:flutter/material.dart';

class LinearFlowWidget extends StatefulWidget {
  const LinearFlowWidget({Key? key}) : super(key: key);

  @override
  _LinearFlowWidgetState createState() => _LinearFlowWidgetState();
}
double iconSize=80;


class _LinearFlowWidgetState extends State<LinearFlowWidget> with SingleTickerProviderStateMixin{

  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=AnimationController(vsync: this,
    duration: Duration(milliseconds: 300));
  }

  @override
  void dispose() {

    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Flow(
      delegate: FlowMenuDelegate(controller: controller),
      children: <IconData>[
        Icons.menu,
        Icons.mail,  //0
        Icons.call,  //1
        Icons.notifications,  //2
      ].map<Widget>(buildItem).toList(),
    );
  }

  Widget buildItem(IconData icon) {
    return SizedBox(
      width: iconSize,
      height: iconSize,
      child: FloatingActionButton(
        onPressed: () {
          if(controller.status==AnimationStatus.completed){
            controller.reverse();
          }
          else{
            controller.forward();
          }
        },
        elevation: 0,
        splashColor: Colors.black,
        child: Icon(
          icon,
          color: Colors.white,
          size: 45,
        ),
      ),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {

  final Animation<double> controller;

  FlowMenuDelegate({required this.controller});

  @override
  void paintChildren(FlowPaintingContext context) {
    // context.paintChild(0, transform: Matrix4.translationValues(150, 200, 0));
    // context.paintChild(1, transform: Matrix4.translationValues(70, 120, 0));
    // context.paintChild(2, transform: Matrix4.translationValues(70, 280, 0));

    final size=context.size;
    final xStart=size.width-iconSize;
    final yStart=size.height-iconSize;

    for(int i=context.childCount-1;i>=0;i--){
      final childSize=context.getChildSize(i)!.width;  //8 for margin
      final dx=(childSize+8)*i;
      final x=xStart-dx*0.7*controller.value;
      final y=yStart-dx*0.7*controller.value;
      context.paintChild(i,transform: Matrix4.translationValues(x, y, 0));
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
