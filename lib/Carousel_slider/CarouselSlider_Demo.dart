import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:widget_of_the_week/Slider_demo.dart';

class CarouselSlider_Demo extends StatefulWidget {
  const CarouselSlider_Demo({Key? key}) : super(key: key);

  @override
  _CarouselSlider_DemoState createState() => _CarouselSlider_DemoState();
}

class _CarouselSlider_DemoState extends State<CarouselSlider_Demo> {

  List<String> images=[
    'images/image1.png',
    'images/image2.png',
    'images/burger.jpg',
    'images/pizza.jpg',
    'images/pizza2.jpg',
    'images/sandwich.jpg',
    'images/large_img.jpg',
  ];

  var activeIndex=0;
  CarouselController controller=CarouselController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CarouselSlider.builder(
            carouselController: controller,
              itemCount: images.length,
              itemBuilder: (context,index,realIndex){
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  child: Image.asset(images[index],fit: BoxFit.cover,),
                  color: Colors.grey,);
              },
              options: CarouselOptions(
                  height: 200,
                initialPage: 0,
                //autoPlay: true,   //set autoplay
                //autoPlayAnimationDuration: Duration(seconds: 2), //duration for autoplay animation
                //autoPlayInterval: Duration(seconds: 3),   //set duration for auto play
                //viewportFraction: 1,       //to see only one photo
                enlargeCenterPage: true,        //it's show center image bigger than others
                enlargeStrategy: CenterPageEnlargeStrategy.height,    //
                //pageSnapping: false,          //by this we can scroll every pixel
                //enableInfiniteScroll: false, //by this you can not scroll in at last and fist item
                onPageChanged: (index,reason){
                    setState(() {
                      activeIndex=index;
                    });
                }
              )
          ),
          SizedBox(height: 20,),
          AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: images.length,
            axisDirection: Axis.horizontal,
            onDotClicked: (index){
              controller.animateToPage(index);
            },
            effect:  ExpandingDotsEffect(
                spacing:  8.0,
                radius:  4.0,
                dotWidth:  24.0,
                dotHeight:  16.0,
                paintStyle:  PaintingStyle.fill,
                strokeWidth:  1.5,
                dotColor:  Colors.grey,
                activeDotColor:  Colors.deepOrange

            ),
          ),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){
                controller.previousPage(
                  duration: Duration(seconds: 1),
                  curve: Curves.linear
                );
              }, icon: Icon(Icons.arrow_back_ios)),
              IconButton(onPressed: (){
                controller.nextPage(
                    duration: Duration(seconds: 1),
                    curve: Curves.linear
                );
              }, icon: Icon(Icons.arrow_forward_ios)),
            ],
          )
        ],
      ),
    );
  }
}
