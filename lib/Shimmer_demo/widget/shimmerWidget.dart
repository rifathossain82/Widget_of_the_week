import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  double height;
  double width;
  final ShapeBorder shapeBorder;

  ShimmerWidget.rectangle({Key? key,this.width=double.infinity,required this.height}):this.shapeBorder=RoundedRectangleBorder();

  ShimmerWidget.circular({Key? key, required this.width,required this.height,this.shapeBorder= const CircleBorder()});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[400]!,
      highlightColor: Colors.grey[300]!,
      direction: ShimmerDirection.ltr,
      period: Duration(seconds: 4),
      child: Container(
        height: height,
        width: width,
        decoration: ShapeDecoration(
          shape: shapeBorder,
          color: Colors.grey,
        ),
      ),
    );
  }
}
