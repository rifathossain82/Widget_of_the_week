import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class Fade_in_image_demo extends StatelessWidget {
  const Fade_in_image_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          FadeInImage.assetNetwork(
            height: 200,
              width: 200,
              fadeInDuration: Duration(seconds: 3),
              fadeInCurve: Curves.easeIn,
              placeholder: 'images/sandwich.jpg',
              image: 'https://static.remove.bg/remove-bg-web/6cc620ebfb5922c21227f533a09d892abd65defa/assets/before-after/s2-before-77500a342b0d85e3d31ba8656924b60c69308ff124671d459f1b9105369e5b10.jpg'
          ),
          FadeInImage.memoryNetwork(
              height: 200,
              width: 200,
              fadeInDuration: Duration(seconds: 3),
              fadeInCurve: Curves.easeIn,
              placeholder: kTransparentImage,
              image: 'https://static.remove.bg/remove-bg-web/6cc620ebfb5922c21227f533a09d892abd65defa/assets/before-after/s2-before-77500a342b0d85e3d31ba8656924b60c69308ff124671d459f1b9105369e5b10.jpg'
          ),
      FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image: 'https://picsum.photos/250?image=9',
      ),
        ],
      ),
    );
  }
}
