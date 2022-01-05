import 'package:flutter/material.dart';

class Details_image extends StatelessWidget {
  String image;


  Details_image(this.image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Full Image'),
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: Hero(
          tag: image,
            child: Image.asset(image,fit: BoxFit.cover,)
        ),
      ),
    );
  }
}
