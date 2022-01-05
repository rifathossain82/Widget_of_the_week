import 'package:flutter/material.dart';
import 'package:widget_of_the_week/Animated_list_demo/Data_model.dart';

class ListItemWidget extends StatelessWidget {
  final Data_model data;
  Animation<double> animation;
  VoidCallback? onclick;

  ListItemWidget(this.data, this.animation, this.onclick);

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      key: ValueKey(data.images),
      sizeFactor: animation,
      child: build_item(),
    );
  }

  Widget build_item() {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.blueGrey[900]),
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        title: Text(
          data.name,
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(data.images),
          radius: 32,
        ),
        trailing: IconButton(
          onPressed: onclick,
          icon: Icon(
            Icons.delete,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
