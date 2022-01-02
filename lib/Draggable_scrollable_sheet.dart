import 'package:flutter/material.dart';

class Draggable_scrollable_sheet extends StatelessWidget {

   late ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.4,
        minChildSize: 0.2,
        maxChildSize: 0.6,
        builder: (context,scrollController){
          return SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('images/sandwich.jpg'),
                Image.asset('images/sandwich.jpg'),
                Image.asset('images/sandwich.jpg'),
                Image.asset('images/sandwich.jpg'),
                Image.asset('images/sandwich.jpg'),
                Image.asset('images/sandwich.jpg'),
                Image.asset('images/sandwich.jpg'),
                Image.asset('images/sandwich.jpg'),
                Image.asset('images/sandwich.jpg'),
              ],
            ),
            controller: scrollController,
          );
        },
    );
  }
}
