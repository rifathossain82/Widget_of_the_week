import 'package:flutter/material.dart';
import 'package:widget_of_the_week/Hero_widget/Details_image.dart';

class Hero_widget_demo extends StatelessWidget {
  Hero_widget_demo({Key? key}) : super(key: key);

List image=[
  'images/image1.png',
  'images/image2.png',
  'images/burger.jpg',
  'images/pizza.jpg',
  'images/pizza2.jpg',
  'images/sandwich.jpg',
  'images/large_img.jpg',
];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5
          ),
          itemCount: image.length,
          itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>Details_image(image[index])));
              },
                child: Hero(
                  tag: image[index],
                    child: Image.asset(image[index],fit: BoxFit.cover,)
                )
            );
          },
      ),
    );
  }
}
