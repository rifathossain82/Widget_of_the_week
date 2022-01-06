import 'package:flutter/material.dart';

class Clip_R_rect_demo extends StatelessWidget {
  const Clip_R_rect_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ClipRRect(
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.circular(100),
            child: Image.asset('images/pizza2.jpg',),
        ),
      ),
    );
  }
}
