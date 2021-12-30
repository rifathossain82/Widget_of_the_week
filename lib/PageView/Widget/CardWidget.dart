import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  String uriImage;
  String title;
  String description;


  CardWidget(this.uriImage, this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 10),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blueGrey[900],
          image: DecorationImage(
            image: AssetImage(uriImage),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Text(title,style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 5,),
            Text(description,style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
