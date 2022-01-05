import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class Place_holder_demo extends StatefulWidget {
  const Place_holder_demo({Key? key}) : super(key: key);

  @override
  _Place_holder_demoState createState() => _Place_holder_demoState();
}

class _Place_holder_demoState extends State<Place_holder_demo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            child: Stack(
              children: [
                Center(child: CircularProgressIndicator(),),
                FadeInImage.memoryNetwork(
                  height: 300,
                    placeholder: kTransparentImage,
                    fadeInDuration: Duration(milliseconds: 3000),
                    image: 'https://upload.wikimedia.org/wikipedia/commons/9/9a/Gull_portrait_ca_usa.jpg'
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 300,
            child: Stack(
              children: [
                Center(child: Image.asset('images/pizza2.jpg'),),
                Center(
                  child: FadeInImage.memoryNetwork(
                      height: 300,
                      fadeInDuration: Duration(milliseconds: 3000),
                      placeholder: kTransparentImage,
                      image: 'https://cdn.eso.org/images/thumb300y/eso1907a.jpg'
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
